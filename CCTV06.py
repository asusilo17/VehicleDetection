## Modeling memproses seluruh video di dalam folder
## Untuk kebutuhan menghitung dan evaluasi keberhasilan pembacaan vidio

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

# Load environment variables
load_dotenv()
iot_location_id = os.getenv("iot_location_id")
bot_token = os.getenv('bot_token')
bot_uname = os.getenv('bot_uname')
bot_name = os.getenv('bot_name')

# Date
today = datetime.today().strftime('%Y-%m-%d')

# Load models
ocr = PaddleOCR(use_angle_cls=True, lang='en')
YoloModelVehicle = YOLO("Yolo/yolov10n.pt")
YoloModelLicenseNumber = YOLO("Yolo/best.pt")

# Config
skip_frames = 5  # Proses setiap 5 frame
video_folder = 'DataVideo'
video_files = glob.glob(os.path.join(video_folder, '*.mp4'))

# Loop setiap video
for rtsp_url in video_files:
    print(f"\n[INFO] Memproses video: {rtsp_url}")
    cap = cv2.VideoCapture(rtsp_url)
    frame_count = 0
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
                                    plat_number, plat_conf = f_ocr_process(license_crop)
                                    if plat_number:
                                        frame = f_image_box_license_2(frame, abs_lx1, abs_lx2, abs_ly1, abs_ly2, plat_number)

                                        f_sql_savePlateIdentification(
                                            p_file_name=rtsp_url,
                                            p_license_number=plat_number,
                                            p_confidence=lp_conf
                                        )

        frame_resized = cv2.resize(frame, (800, 600))
        cv2.imshow("ANPR Live Stream", frame_resized)

        key = cv2.waitKey(1) & 0xFF
        if key == ord('q'):
            cap.release()
            cv2.destroyAllWindows()
            exit()
        elif key == ord('p'):
            paused = not paused

    cap.release()
    cv2.destroyAllWindows()
