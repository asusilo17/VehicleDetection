import cv2
import torch
from paddleocr import PaddleOCR
from ultralytics import YOLO
import numpy as np
from datetime import datetime
from dotenv import load_dotenv
import os
import glob
from Model.imageProcess import f_image_read, f_image_preprocessing_010, f_save_image, f_imagesingle_read, f_image_box, f_image_box_license, f_image_box_license_2
from Model.generalProcess import f_remove_special_char
from Model.ocrProcess import f_ocr_process
from Model.sqlProcess import f_sql_savePlateIdentification, f_sql_checking_wanprestasi_data
from Model.botProcess import f_bot_sendPhoto_2

iot_location_id = os.getenv("iot_location_id")
# Load YOLOv5 model (Pastikan model sudah di-download)
# model = torch.hub.load('ultralytics/yolov5', 'custom', path='best.pt', force_reload=True)
# model = YOLO("weights/best.pt")
ocr = PaddleOCR(use_angle_cls=True, lang='en')

bot_token = os.getenv('bot_token')
bot_uname = os.getenv('bot_uname')
bot_name = os.getenv('bot_name')

today = datetime.today()
today = today.strftime('%Y-%M-%d')

# YOLO Modeling
YoloModelVehicle = YOLO("Yolo/yolov10m.pt")  # Model YOLOv8 Nano untuk deteksi kendaraan
YoloModelLicenseNumber = YOLO("Yolo/best.pt")

# Konfigurasi RTSP CCTV
# rtsp_url = "rtsp://username:password@ip_camera:port/stream"
rtsp_url = 'DataVideo/A1206YV.mp4'
cap = cv2.VideoCapture(rtsp_url)

# Konfigurasi skipping frame
frame_count = 0
skip_frames = 5  # Proses setiap 5 frame

# Tambahkan variabel status pause
paused = False

while cap.isOpened():
    if not paused:
        ret, frame = cap.read()
        if not ret:
            break

        frame_count += 1
        if frame_count % skip_frames != 0:
            continue

        vehicle_mask = np.zeros(frame.shape[:2], dtype=np.uint8)
        original_frame = frame.copy()

        #####################################################################
        # Tahap 1. Mendeteksi Object Kendaraan
        #####################################################################
        vehicle_results = YoloModelVehicle(frame)

        for vehicle in vehicle_results:
            for box in vehicle.boxes:
                x1, y1, x2, y2 = map(int, box.xyxy[0].numpy())
                class_id = int(box.cls[0])
                confidence = box.conf[0]

                if class_id in [2, 3, 5, 7] and confidence > 0.10:
                    # frame = f_image_box(frame, x1, x2, y1, y2, confidence)


                    vehicle_crop = frame[y1:y2, x1:x2]
                    vh, vw = vehicle_crop.shape[:2]
                    vehicle_crop_resized = cv2.resize(vehicle_crop, (640, 640))

                    #####################################################################
                    # Tahap 2. Mendeteksi Plat Nomor Kendaraan
                    #####################################################################
                    license_plate_results = YoloModelLicenseNumber(vehicle_crop_resized)

                    for result in license_plate_results:
                        for lp_box in result.boxes:
                            lx1, ly1, lx2, ly2 = map(int, lp_box.xyxy[0].numpy())
                            lp_conf = lp_box.conf[0]

                            if lp_conf > 0.1:
                                # f_image_b ox_license(frame, lx1, lx2, ly1, ly2, lp_conf)

                                scale_x = vw / 640
                                scale_y = vh / 640
                                lx1 = int(lx1 * scale_x)
                                lx2 = int(lx2 * scale_x)
                                ly1 = int(ly1 * scale_y)
                                ly2 = int(ly2 * scale_y)

                                abs_lx1 = lx1 + x1
                                abs_lx2 = lx2 + x1
                                abs_ly1 = ly1 + y1
                                abs_ly2 = ly2 + y1

                                # f_image_box(frame, abs_lx1, abs_lx2, abs_ly1, abs_ly2, lp_conf)

                                license_crop = original_frame[abs_ly1:abs_ly2, abs_lx1:abs_lx2]


                                #####################################################################
                                # Tahap 3. Proses OCR Plat Nomor Kendaraan
                                #####################################################################
                                plat_number, plat_conf = f_ocr_process(license_crop)

                                if plat_number:
                                    frame = f_image_box_license_2(frame, abs_lx1, abs_lx2, abs_ly1, abs_ly2, plat_number)

                                    f_sql_savePlateIdentification(p_file_name=rtsp_url,
                                                                    p_license_number=plat_number,
                                                                    p_confidence=lp_conf)
                                    
                                    dataWanprestasi = f_sql_checking_wanprestasi_data(plat_number, iot_location_id)

                                    if dataWanprestasi:
                                        # print(f"datas : {datas}")
                                        for data in dataWanprestasi:
                                            print(f"data : {data['Collector']}")

                                            f_bot_sendPhoto_2(
                                                                p_bot_token=bot_token,
                                                                p_chatid=data['CollectorTelegram'],
                                                                p_pic=data['Collector'],
                                                                p_debitorname=data['FullName'],
                                                                p_photo_cv2=frame,
                                                                p_license_plate=data['PlatNumber'],
                                                                p_location=data['LocationName'],
                                                                p_address=data['LocationAddress'],
                                                                p_maps_url=data['Maps'],
                                                                p_date=today
                                                            )


    ## Resize Frame
    if not paused:
        frame_resized = cv2.resize(frame, (800, 600))
    else:
        # Saat pause, tampilkan frame terakhir yang sama
        frame_resized = cv2.resize(frame, (800, 600))

    # Tampilkan video
    cv2.imshow("ANPR Live Stream", frame_resized)

    key = cv2.waitKey(1) & 0xFF
    if key == ord('q'):
        break
    elif key == ord('p'):
        paused = not paused  # Toggle pause/play
