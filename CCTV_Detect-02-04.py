import cv2
import torch
from paddleocr import PaddleOCR
from ultralytics import YOLO
import numpy as np
from Model.imageProcess import f_image_read, f_image_preprocessing_010, f_save_image, f_imagesingle_read, f_image_box, f_image_box_license

# Load YOLOv5 model (Pastikan model sudah di-download)
# model = torch.hub.load('ultralytics/yolov5', 'custom', path='best.pt', force_reload=True)
# model = YOLO("weights/best.pt")
ocr = PaddleOCR(use_angle_cls=True, lang='en')

# YOLO Modeling
YoloModelVehicle = YOLO("Yolo/yolov10m.pt")  # Model YOLOv8 Nano untuk deteksi kendaraan
YoloModelLicenseNumber = YOLO("Yolo/best.pt")

# Konfigurasi RTSP CCTV
# rtsp_url = "rtsp://username:password@ip_camera:port/stream"
rtsp_url = 'DataVideo/UNPAM_PARKIR_248202502221342.mp4'
cap = cv2.VideoCapture(rtsp_url)

# Konfigurasi skipping frame
frame_count = 0
skip_frames = 1  # Proses setiap 5 frame

while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        break

    frame_copy = frame.copy()
    
    frame_count += 1
    if frame_count % skip_frames == 0:
        #####################################################################
        # Vehicle Image Processing
        #####################################################################

        # masked_image = np.zeros_like(frame)  # Hitam semua
        vehicle_mask = np.zeros(frame.shape[:2], dtype=np.uint8)  # Mask biner

        vehicle_results = YoloModelVehicle(frame)

        for vehicle in vehicle_results:
            for box in vehicle.boxes:
                # Ambil bounding box kendaraan
                x1, y1, x2, y2 = map(int, box.xyxy[0].numpy())
                class_id = int(box.cls[0])
                confidence = box.conf[0]

                if class_id in [2, 3, 5, 7] and confidence > 0.80:  # ID COCO untuk kendaraan
                    # frame = f_image_box(frame, x1, x2, y1, y2, confidence)

                    # Buat frame kosong (hitam) dengan ukuran sama
                    masked_frame = np.zeros_like(frame)

                    # Salin bagian kendaraan saja ke frame hitam
                    masked_frame[y1:y2, x1:x2] = frame[y1:y2, x1:x2]

                    frame_copy = masked_frame

                    # Jalankan deteksi plat nomor pada masked frame
                    license_plate_results = YoloModelLicenseNumber(frame_copy)

                    for result in license_plate_results:
                        for lp_box in result.boxes:
                            lx1, ly1, lx2, ly2 = map(int, lp_box.xyxy[0].numpy())
                            lp_conf = lp_box.conf[0]

                            # if lp_conf > 0.5:
                                # Tidak perlu konversi koordinat, langsung pakai
                            frame = f_image_box(frame, lx1, lx2, ly1, ly2, lp_conf)

    ## Resize Frame
    frame_resized = cv2.resize(frame, (800, 600))

    # Tampilkan video
    cv2.imshow("ANPR Live Stream", frame_resized)
    
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
