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

    # Melakukan OCR
    results = easy_ocr.readtext(image)

    if not results:
        print("Gagal dapat hasil OCR")
    else:
        # Mengambil hasil pertama saja (jika sesuai dengan logikamu sebelumnya)
        top_result = results[0]
        _, text, confidence = top_result

        plat_detect = f_remove_special_char(text)
        plat_predictval = confidence  # Confidence disimpan jika diperlukan

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