### Tanpa Pemutaran Vidio
### Hanya sebagai backend saja

import cv2
import torch
from paddleocr import PaddleOCR
from ultralytics import YOLO
import numpy as np
from datetime import datetime
from dotenv import load_dotenv
import os
import glob
from Model import imageProcess as ip
from Model import ocrProcess as op
from Model import saveToFile as csv
from Model.botProcess import f_bot_sendPhoto_2

# Load environment variables
load_dotenv()
iot_location_id = os.getenv("iot_location_id")
bot_token = os.getenv('bot_token')
bot_uname = os.getenv('bot_uname')
bot_name = os.getenv('bot_name')

ocr = PaddleOCR(use_angle_cls=True, lang='en')


yolo_model = [
    {"version": "Small", "object":"yolov10s", "license_plat":"best_yolov10s_licenseplat"},
    {"version": "Nano", "object":"yolov10n", "license_plat":"best_yolov10n_licenseplat"},
    {"version": "Medium", "object":"yolov10m", "license_plat":"best_yolov10m_licenseplat"},
    {"version": "Balance", "object":"yolov10b", "license_plat":"best_yolov10b_licenseplat"},
    {"version": "Large", "object":"yolov10l", "license_plat":"best_yolov10l_licenseplat"},
    {"version": "Extra Large", "object":"yolov10x", "license_plat":"best_yolov10x_licenseplat"},
]

def f_loop_detect(p_version, p_yolo_object, p_yolo_license):
    # Date
    today = datetime.today().strftime('%Y-%m-%d')

    # Load models
    YoloModelVehicle = YOLO(f"Yolo/{p_yolo_object}.pt")
    YoloModelLicenseNumber = YOLO(f"Yolo/{p_yolo_license}.pt")


    # Config
    skip_frames = 5  # Proses setiap 5 frame
    video_folder = 'DataVideo'
    video_files = glob.glob(os.path.join(video_folder, '*.mp4'))

    # Loop setiap video
    for rtsp_url in video_files:
        print(f"\n[INFO] Memproses video: {rtsp_url}")
        cap = cv2.VideoCapture(rtsp_url)
        frame_count = 0

        while cap.isOpened():
            ret, frame = cap.read()
            if not ret:
                break

            frame_count += 1
            if frame_count % skip_frames != 0:
                continue

            vehicle_mask = np.zeros(frame.shape[:2], dtype=np.uint8)
            original_frame = frame.copy()

            # Deteksi kendaraan
            vehicle_results = YoloModelVehicle(frame)
            for vehicle in vehicle_results:
                for box in vehicle.boxes:
                    x1, y1, x2, y2 = map(int, box.xyxy[0].numpy())
                    class_id = int(box.cls[0])
                    confidence = box.conf[0]

                    if class_id in [2, 3, 5, 7] and confidence > 0.50:
                        vehicle_crop = frame[y1:y2, x1:x2]
                        vh, vw = vehicle_crop.shape[:2]
                        vehicle_crop_resized = cv2.resize(vehicle_crop, (640, 640))

                        # Deteksi plat nomor
                        license_plate_results = YoloModelLicenseNumber(vehicle_crop_resized)
                        for result in license_plate_results:
                            for lp_box in result.boxes:
                                lx1, ly1, lx2, ly2 = map(int, lp_box.xyxy[0].numpy())
                                lp_conf = lp_box.conf[0]

                                if lp_conf > 0.1:
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

                                    license_crop = original_frame[abs_ly1:abs_ly2, abs_lx1:abs_lx2]

                                    # OCR
                                    plat_number, plat_conf = op.f_ocr_process(license_crop)
                                    if plat_number:
                                        # Jika ingin anotasi box disimpan ke file atau log, bisa disimpan di sini
                                        # frame = f_image_box_license_2(frame, abs_lx1, abs_lx2, abs_ly1, abs_ly2, plat_number)
                                        nama_file = rtsp_url.replace("DataVideo\\",'')
                                        nama_file = nama_file.replace('.mp4','')

                                        plat_number = op.correct_ocr_plate(plat_number)


                                        csv.f_savePlateIdentification_to_csv(
                                            p_file_name=rtsp_url,
                                            p_license_number=plat_number,
                                            p_confidence=0,
                                            p_metode=p_version
                                        )

        cap.release()

    print("[INFO] Semua video telah selesai diproses.")


# print(f"yolo : {yolo_model}")

for i in yolo_model:
    # print(f"{i}")
    print(f"{i["version"]}")

    f_loop_detect(i["version"], i["object"], i["license_plat"])