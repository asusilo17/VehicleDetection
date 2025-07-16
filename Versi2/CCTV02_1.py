import cv2
import threading
import queue
import time
from datetime import datetime
from ultralytics import YOLO
from Model.imageProcess import f_image_box_license
from Model.ocrProcess import f_ocr_process
from Model.sqlProcess import f_sql_savePlateIdentification
from dotenv import load_dotenv
import os

load_dotenv()


# === Load Model ===
YoloModelVehicle = YOLO("Yolo/yolov10n.pt")  # Deteksi kendaraan
YoloModelLicenseNumber = YOLO("Yolo/best.pt")  # Deteksi plat nomor

# === Konfigurasi Source Video ===
# VIDEO_SOURCE = 'DataVideo/UNPAM_PARKIR_248202502221342.mp4'
# VIDEO_SOURCE = 'DataVideo/UNPAM_PARKIR_248202502221338.mp4'
VIDEO_SOURCE = 'DataVideo/UNPAM_PARKIR_248202502221348.mp4'
cap = cv2.VideoCapture(VIDEO_SOURCE)

# === Queue untuk frame dan output ===
frame_queue = queue.Queue(maxsize=10)
output_queue = queue.Queue(maxsize=10)

# === Config skip frame ===
SKIP_FRAMES = 1

# === Video Capture Thread ===
def capture_thread():
    frame_id = 0
    while cap.isOpened():
        ret, frame = cap.read()
        if not ret:
            break
        frame_id += 1
        if frame_id % SKIP_FRAMES != 0:
            continue
        if not frame_queue.full():
            frame_queue.put(frame)
        else:
            time.sleep(0.01)  # Supaya tidak overloading

# === Detection + OCR Thread ===
def detection_thread():
    while True:
        if frame_queue.empty():
            time.sleep(0.01)
            continue

        frame = frame_queue.get()
        original_frame = frame.copy()

        vehicle_results = YoloModelVehicle(frame)

        for vehicle in vehicle_results:
            for box in vehicle.boxes:
                x1, y1, x2, y2 = map(int, box.xyxy[0].numpy())
                class_id = int(box.cls[0])
                confidence = box.conf[0]

                if class_id in [2, 3, 5, 7] and confidence > 0.5:
                    vehicle_crop = frame[y1:y2, x1:x2]
                    vh, vw = vehicle_crop.shape[:2]
                    vehicle_crop_resized = cv2.resize(vehicle_crop, (640, 640))
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
                                plat_number, plat_conf = f_ocr_process(license_crop)

                                frame = f_image_box_license(frame, abs_lx1, abs_lx2, abs_ly1, abs_ly2, plat_number)

                                f_sql_savePlateIdentification(p_file_name=VIDEO_SOURCE,
                                                                p_license_number=plat_number,
                                                                p_confidence=lp_conf
                                                                )

        frame_resized = cv2.resize(frame, (800, 600))
        if not output_queue.full():
            output_queue.put(frame_resized)

# === Jalankan thread ===
threading.Thread(target=capture_thread, daemon=True).start()
threading.Thread(target=detection_thread, daemon=True).start()

# === Loop utama untuk tampilkan hasil ===
while True:
    if not output_queue.empty():
        display_frame = output_queue.get()
        cv2.imshow("ANPR Live Stream", display_frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
