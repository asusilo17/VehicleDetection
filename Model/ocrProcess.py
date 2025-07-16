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
    confidence = 0

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
                plat_detect = correct_ocr_plate(plat_detect)

    return plat_detect, confidence

def f_ocr_process_bp(image):
    plat_detect = ""
    plat_predictval = ""
    confidence = 0

    data = []

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
                plat_detect = correct_ocr_plate(plat_detect)

                data.append({
                    "plat_detect": plat_detect,
                    "confidence": confidence
                })

    return data

def f_ocr_process_prepare(image):
    plat_detect = ""
    plat_predictval = ""

    resized = cv2.resize(image, (640, 640), interpolation=cv2.INTER_LINEAR)


    gray = cv2.cvtColor(resized, cv2.COLOR_BGR2GRAY)
    

    thresh = cv2.adaptiveThreshold(resized, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C,
                               cv2.THRESH_BINARY, 11, 2)
    
    kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (3, 3))
    cleaned = cv2.morphologyEx(thresh, cv2.MORPH_CLOSE, kernel)

    ocr_result = paddle_ocr.ocr(cleaned)

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
                plat_detect = correct_ocr_plate(plat_detect)

    return plat_detect, confidence


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

def correct_ocr_plate_dynamic(plate):
    if not plate:
        return plate

    # Peta koreksi karakter OCR yang sering salah
    ocr_correction_map = {
        '0': 'O',
        '1': 'I',
        '2': 'Z',
        '5': 'S',
        '8': 'B'
    }

    # Mulai dari belakang dan cari karakter terakhir yang bukan huruf
    i = len(plate) - 1
    while i >= 0 and (plate[i].isalpha() or plate[i].isdigit()):
        i -= 1

    # Bagian depan = sebelum i+1, bagian belakang (kemungkinan huruf) = setelah i
    number_part = plate[:i+1]
    letter_part = plate[i+1:]

    # Koreksi hanya di letter_part
    corrected_letter_part = ''.join(ocr_correction_map.get(ch, ch) for ch in letter_part)

    return number_part + corrected_letter_part

def correct_ocr_plate(plate):
    ocr_correction_map = {
    '0': 'O',
    '1': 'I',
    '5': 'S',
    '8': 'B',
    '2': 'Z'
    }
    # Koreksi hanya di 2 karakter terakhir
    if len(plate) >= 2:
        corrected = ''
        for char in plate[-2:]:
            if char in ocr_correction_map:
                corrected += ocr_correction_map[char]
            else:
                corrected += char
        plate = plate[:-2] + corrected
    return plate
