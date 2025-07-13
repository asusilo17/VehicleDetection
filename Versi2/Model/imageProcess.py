import cv2
import numpy as np
import math
import sqlite3
from datetime import datetime
import matplotlib.pyplot as plt
from datetime import datetime
import os
import re

def f_image_read(image1, image2, title1 = "", title2 = ""):
    fig = plt.figure(figsize = (8, 6))
    ax1 = fig.add_subplot(121)
    ax1.imshow(image1, cmap = "gray")
    ax1.set(xticks = [], yticks = [], title = title1)
    ax2 = fig.add_subplot(122)
    ax2.imshow(image2, cmap = "gray")
    ax2.set(xticks = [], yticks = [], title = title2)

def f_imagesingle_read(image1):
    plt.figure(figsize=(8, 6))  # Mengatur ukuran gambar
    plt.imshow(image1)  # Menampilkan gambar dalam format RGB
    plt.axis("off")  # Menyembunyikan axis
    plt.show()

def f_image_preprocessing_010(p_image):
    gray = cv2.cvtColor(p_image, cv2.COLOR_BGR2GRAY)

    # Tingkatkan kontras menggunakan CLAHE
    clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))

    enhanced_contrast = clahe.apply(gray)

    return enhanced_contrast

def prepare_plate_image(image, resize_width=None):
    """
    Melakukan pre-processing pada gambar untuk deteksi plat nomor.
    
    Args:
        image (numpy.ndarray): Gambar input (format BGR dari OpenCV).
        resize_width (int, optional): Lebar baru jika ingin resize. Tinggi disesuaikan otomatis.
    
    Returns:
        processed_image (numpy.ndarray): Gambar hasil pre-processing (grayscale atau edge).
    """
    # Resize jika diinginkan
    if resize_width is not None:
        height = int(image.shape[0] * (resize_width / image.shape[1]))
        image = cv2.resize(image, (resize_width, height))

    # Konversi ke grayscale
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    # Peningkatan kontras dengan histogram equalization
    enhanced = cv2.equalizeHist(gray)

    # Blur untuk mengurangi noise
    blurred = cv2.GaussianBlur(enhanced, (5, 5), 0)

    # Deteksi tepi menggunakan Canny
    edges = cv2.Canny(blurred, 100, 200)

    return edges  # Atau return gray/enhanced jika ingin dipakai untuk OCR langsung

def prepare_for_plate_detection(image, resize_width=None):
    """
    Pre-processing untuk mendeteksi area plat nomor (bukan OCR).
    
    Args:
        image (numpy.ndarray): Gambar input BGR.
        resize_width (int, optional): Ubah ukuran jika perlu.
    
    Returns:
        edges (numpy.ndarray): Hasil edge detection yang cocok untuk mencari kontur.
    """
    # Resize
    if resize_width:
        height = int(image.shape[0] * (resize_width / image.shape[1]))
        image = cv2.resize(image, (resize_width, height))

    # Grayscale
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    # Sedikit blur untuk noise tapi tetap mempertahankan edge
    blurred = cv2.bilateralFilter(gray, 11, 17, 17)  # Lebih baik untuk edge-preserving

    # Edge detection
    edges = cv2.Canny(blurred, 30, 200)

    return edges


def f_save_image(p_env_iot, p_path, p_image, p_inf):
    l_datetime = datetime.now()

    l_formatted_datetime = l_datetime.strftime("%Y%m%d%H%M%S%f")[:-3]

    l_deviceid = f"D{str(p_env_iot).zfill(3)}"

    l_kendaraan = f"{l_deviceid}_{l_formatted_datetime}{p_inf}.jpg"

    l_pathkendaraan = os.path.join(p_path, l_kendaraan)

    l_flag = cv2.imwrite(l_pathkendaraan, p_image)

    if l_flag:

        return l_pathkendaraan, l_flag
    else:
        return '', l_flag
    
def f_is_valid_plate(text):
    if len(text) > 10:  # Panjang karakter yang masuk akal
        return False
    # if not re.match(r'^[A-Z]{1,2} \d{1,4} [A-Z]{1,3}$', text):  # Pola plat nomor
    #     return False
    if not re.match(r'^[A-Z0-9 ]+$', text):  # Hanya huruf, angka, dan spasi
        return False
    return True
    # return f"text : {text}"

def f_image_box(image, x1, x2, y1, y2, confidence):
    # Menentukan ukuran teks terlebih dahulu untuk membuat latar belakang yang tepat
    # (text_width, text_height), _ = cv2.getTextSize(f"Vehicle ({confidence:.2f})", cv2.FONT_HERSHEY_SIMPLEX, 0.5, 2)

    #Buat Garis Kotak
    cv2.rectangle(image, (x1, y1), (x2, y2), (0, 0, 255), 2)    #Merah
    
    #Buat Background Text
    # cv2.rectangle(image, (x1, y1 - text_height - 15), (x1 + text_width, y1), (0, 0, 255), -1)  # Latar belakang merah

    # Gambar teks dengan warna kuning
    # cv2.putText(image, f"Vehicle ({confidence:.2f})", 
    #             (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 255), 2)  # Teks warna kuning
    
    return image

def f_image_box_license(image, x1, x2, y1, y2, teks):
    # Menentukan ukuran teks terlebih dahulu untuk membuat latar belakang yang tepat
    (text_width, text_height), _ = cv2.getTextSize(f"{teks}", cv2.FONT_HERSHEY_SIMPLEX, 0.5, 2)

    #Buat Garis Kotak
    cv2.rectangle(image, (x1, y1), (x2, y2), (0, 0, 255), 2)    #Merah
    
    #Buat Background Text
    cv2.rectangle(image, (x1, y1 - text_height - 15), (x1 + text_width, y1), (0, 0, 255), -1)  # Latar belakang merah

    # Gambar teks dengan warna kuning
    cv2.putText(image, f"{teks}", 
                (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 255), 2)  # Teks warna kuning
    
    return image

def f_image_box_license_2(image, x1, x2, y1, y2, teks):
    # Konfigurasi font
    font = cv2.FONT_HERSHEY_SIMPLEX
    font_scale = 1.0     # Perbesar ukuran font
    font_thickness = 2
    padding = 5          # Padding di sekitar teks
    
    label = f"{teks}"

    # Ukuran teks
    (text_width, text_height), baseline = cv2.getTextSize(label, font, font_scale, font_thickness)

    # Hitung posisi background teks
    bg_x1 = x1
    bg_y1 = y1 - text_height - 2 * padding
    bg_x2 = x1 + text_width + 2 * padding
    bg_y2 = y1

    # Jika posisi teks keluar gambar (misalnya terlalu atas), atur ke bawah kotak
    if bg_y1 < 0:
        bg_y1 = y2
        bg_y2 = y2 + text_height + 2 * padding
        text_y = bg_y2 - padding
    else:
        text_y = y1 - padding

    # Gambar bounding box objek
    cv2.rectangle(image, (x1, y1), (x2, y2), (0, 0, 255), 2)  # Merah

    # Gambar latar belakang teks
    cv2.rectangle(image, (bg_x1, bg_y1), (bg_x2, bg_y2), (0, 0, 255), -1)  # Merah tua

    # Gambar teks
    cv2.putText(image, label, (x1 + padding, text_y), font, font_scale, (0, 255, 255), font_thickness)  # Kuning

    return image
