import cv2
import torch
from paddleocr import PaddleOCR
import numpy as np
import easyocr
import pytesseract

from Model.generalProcess import f_remove_special_char

paddle_ocr = PaddleOCR(use_angle_cls=True, lang='en')
easy_ocr = easyocr.Reader(['en'])  # 'en' untuk bahasa Inggris


def f_ocr_process(image):
    plat_detect = ""
    plat_predictval = ""

    ocr_result = paddle_ocr.ocr(image)

    if ocr_result is None or ocr_result[0] is None:
        print(f"Gagal dapat hasil OCR")
    else:
        # Loop untuk mengekstrak data dan melakukan insert
        for group in ocr_result:
            for coords, label_confidence in group:
                label, confidence = label_confidence  # Mengambil label dan confidence

                #Mendapatkan plat nomor yang terdeteksi
                plat_detect = ocr_result[0][0][1][0]
                plat_predictval = ocr_result[0][0][1][1]

                plat_detect = f_remove_special_char(plat_detect)

    return plat_detect, plat_detect


def f_easyocr_process(image):
    plat_detect = ""
    plat_predictval = ""

    # 1. Resize (jika terlalu kecil)
    if image.shape[0] < 50 or image.shape[1] < 150:
        image = cv2.resize(image, None, fx=2, fy=2, interpolation=cv2.INTER_CUBIC)

    # 2. Grayscale
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    # 3. Bilateral Filter → mengurangi noise, tapi menjaga edge
    gray = cv2.bilateralFilter(gray, 11, 17, 17)

    # 4. Adaptive Thresholding → lebih fleksibel dari OTSU
    thresh = cv2.adaptiveThreshold(
        gray, 255,
        cv2.ADAPTIVE_THRESH_GAUSSIAN_C,
        cv2.THRESH_BINARY_INV,
        25, 15
    )

    # 5. Morphological Operation (Optional)
    kernel = np.ones((2, 2), np.uint8)
    thresh = cv2.morphologyEx(thresh, cv2.MORPH_CLOSE, kernel)

    # 6. EasyOCR Reading
    results = easy_ocr.readtext(thresh)

    if not results:
        print("Gagal dapat hasil OCR")
    else:
        # Ambil hasil dengan confidence tertinggi
        best_result = max(results, key=lambda r: r[2])
        _, text, confidence = best_result

        plat_detect = f_remove_special_char(text)
        plat_predictval = confidence

    return plat_detect, plat_detect

def f_pytesseract_process(image):
    plat_detect = ""
    plat_predictval = ""

    # Konversi gambar ke grayscale (Tesseract lebih baik dengan ini)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    # (Opsional) Peningkatan kontras dengan thresholding
    gray = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)[1]

    # OCR dengan Tesseract
    custom_config = r'--oem 3 --psm 7'  # PSM 7: satu baris teks, cocok untuk plat nomor
    text = pytesseract.image_to_string(gray, config=custom_config)

    # Bersihkan hasil
    plat_detect = f_remove_special_char(text.strip())
    plat_predictval = 0  # Tesseract tidak punya confidence bawaan per teks

    if not plat_detect:
        print("Gagal dapat hasil OCR")

    return plat_detect, plat_detect

def read_plate_number(results, frame, reader):
    n = len(results)
    x_shape, y_shape = frame.shape[1], frame.shape[0]

    for i in range(n):
        row = results[i] # Iterate through each image
        if row[4] >= 0.5: ## Take img with 0.5 confidence
            xmin, ymin, xmax, ymax = row[:4]
            plate = frame[int(ymin):int(ymax), int(xmin):int(xmax)]

            ## Preprocess Plate
            gray = cv2.cvtColor(plate, cv2.COLOR_BGR2GRAY)
            blurred = cv2.bilateralFilter(gray, 17, 15, 15)
#             ret, thresh = cv.threshold(blurred, 125, 255, cv.THRESH_BINARY)

            ## OCR
            text = reader.readtext(blurred)
            text = ' '.join([t[1] for t in text])

            plot_img = frame.copy()

            cv2.rectangle(plot_img, (int(xmin), int(ymin)), (int(xmax), int(ymax)), (0, 255, 0), 2) ## BBox
            cv2.rectangle(plot_img, (int(xmin), int(ymin-20)), (int(xmax), int(ymin)), (0, 255,0), -1) ## for text label background
            final_img = cv2.putText(plot_img, f"{text}", (int(xmin), int(ymin)), cv2.FONT_HERSHEY_SIMPLEX, 1,(255,255,255), 2)
            
            return final_img

#             return cv.cvtColor(final_img, cv.COLOR_BGR2RGB)
#             cv.imwrite(f'/kaggle/working/labeled_img_{i}.jpg', cv.cvtColor(final_img, cv.COLOR_BGR2RGB))