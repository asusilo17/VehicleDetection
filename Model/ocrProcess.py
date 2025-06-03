import cv2
import torch
from paddleocr import PaddleOCR
import numpy as np

from Model.generalProcess import f_remove_special_char

ocr = PaddleOCR(use_angle_cls=True, lang='en')

def f_ocr_process(image):
    plat_detect = ""
    plat_predictval = ""

    ocr_result = ocr.ocr(image)

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