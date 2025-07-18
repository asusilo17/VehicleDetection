import cv2
import torch
# from paddleocr import PaddleOCR
from ultralytics import YOLO
import numpy as np
from datetime import datetime
from Model import imageProcess as ip
from Model import ocrProcess as op
from Model import sqlProcess as sqlp


# Load YOLOv5 model (Pastikan model sudah di-download)
# model = torch.hub.load('ultralytics/yolov5', 'custom', path='best.pt', force_reload=True)
# model = YOLO("weights/best.pt")
# ocr = PaddleOCR(use_angle_cls=True, lang='en')

# YOLO Modeling
YoloModelVehicle = YOLO("Yolo/yolov10m.pt")  # Model YOLOv8 Nano untuk deteksi kendaraan
YoloModelLicenseNumber = YOLO("Yolo/best_yolov10m_licenseplat.pt")

# Konfigurasi RTSP CCTV
# rtsp_url = "rtsp://username:password@ip_camera:port/stream"
plat_number = ""
filename = "A1206YV"
rtsp_url = f"DataVideo/{filename}.mp4"
cap = cv2.VideoCapture(rtsp_url)

# Konfigurasi skipping frame
frame_count = 0
skip_frames = 5  # Proses setiap 5 frame

while cap.isOpened():
    plat_number = ""
    plat_conf = 0

    ret, frame = cap.read()
    if not ret:
        break

    frame_count += 1
    if frame_count % skip_frames != 0:
        continue

    #####################################################################
    # Vehicle Image Processing
    #####################################################################

    # masked_image = np.zeros_like(frame)  # Hitam semua
    vehicle_results = YoloModelVehicle(frame)

    # cv2.imwrite(filename=f"ImgResult/{filename}-{frame_count}.jpeg",
    #                                         img=frame)

    for vehicle in vehicle_results:
        for box in vehicle.boxes:
            # Ambil bounding box kendaraan
            x1, y1, x2, y2 = map(int, box.xyxy[0].numpy())
            class_id = int(box.cls[0])
            confidence = box.conf[0]

            if class_id in [2, 3, 5, 7] and confidence > 0.20:  # ID COCO untuk kendaraan
                # frame = f_image_box(frame, x1, x2, y1, y2, confidence)

                # cv2.imwrite(filename=f"ImgResult/{filename}-{frame_count}.jpeg",
                #                             img=frame)

                vehicle_crop = frame[y1:y2, x1:x2]

                license_plate_results = YoloModelLicenseNumber(vehicle_crop)

                for result in license_plate_results:
                    for lp_box in result.boxes:
                        lx1, ly1, lx2, ly2 = map(int, lp_box.xyxy[0].numpy())
                        lp_conf = lp_box.conf[0]

                        if lp_conf > 0.2:
                            license_crop = vehicle_crop[ly1:ly2, lx1:lx2]
                            plat_number, plat_conf = op.f_ocr_process(license_crop)

                            if plat_number:
                                ip.draw_static_text_top_left(frame=frame,
                                             text=f"License Number : {plat_number}")

                                # sqlp.f_sql_savePlateIdentification(p_file_name=filename,
                                #                                 p_license_number=plat_number,
                                #                                 p_confidence=lp_conf
                                #                                     )


    ## Resize Frame
    frame_resized = cv2.resize(frame, (800, 600))

    # Tampilkan video
    cv2.imshow("ANPR Live Stream", frame_resized)
    
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break


cap.release()
cv2.destroyAllWindows()
