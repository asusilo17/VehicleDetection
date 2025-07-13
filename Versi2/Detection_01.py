import cv2
from ultralytics import YOLO

ocr_metode = 'easyocr'

# Load kedua model YOLO
model_vehicle = YOLO("../Yolo/yolov10m.pt")
model_plate = YOLO("../Yolo/best.pt")

# Buka sumber video
video_path = "../DataVideo/A4574WAD.mp4"  # Ganti dengan path video Anda
cap = cv2.VideoCapture(video_path)

# Fungsi untuk menggambar bounding box
def draw_boxes(frame, results, label_name="Object", color=(0, 255, 0)):
    for result in results:
        for box in result.boxes:
            x1, y1, x2, y2 = map(int, box.xyxy[0])
            conf = float(box.conf[0])
            label = f"{label_name} {conf:.2f}"
            cv2.rectangle(frame, (x1, y1), (x2, y2), color, 2)
            cv2.putText(frame, label, (x1, y1 - 10),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)

# Loop untuk membaca frame
while True:
    ret, frame = cap.read()
    if not ret:
        break

    # Deteksi kendaraan terlebih dahulu
    result_vehicle = model_vehicle(frame, verbose=False)

    draw_boxes(frame, result_vehicle, label_name="Kendaraan", color=(0, 255, 0))

    # Untuk setiap kendaraan, lakukan deteksi plat nomor
    for r in result_vehicle:
        for box in r.boxes:
            x1, y1, x2, y2 = map(int, box.xyxy[0])
            crop_vehicle = frame[y1:y2, x1:x2]

            # Deteksi plat nomor di dalam potongan gambar kendaraan
            result_plate = model_plate(crop_vehicle, verbose=False)

            # Gambar bounding box untuk plat nomor dalam koordinat asli frame
            for plate_box in result_plate[0].boxes:
                px1, py1, px2, py2 = map(int, plate_box.xyxy[0])
                # Konversi koordinat lokal ke global
                global_x1 = x1 + px1
                global_y1 = y1 + py1
                global_x2 = x1 + px2
                global_y2 = y1 + py2
                conf = float(plate_box.conf[0])
                label = f"Plat {conf:.2f}"
                cv2.rectangle(frame, (global_x1, global_y1), (global_x2, global_y2), (0, 0, 255), 2)
                cv2.putText(frame, label, (global_x1, global_y1 - 10),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2)

    # Tampilkan hasil
    frame_resized = cv2.resize(frame, (800, 600))

    cv2.imshow("Deteksi Kendaraan & Plat Nomor", frame_resized)
    if cv2.waitKey(1) & 0xFF == ord("q"):
        break

cap.release()
cv2.destroyAllWindows()
