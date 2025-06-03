import cv2
import numpy as np
import io
import requests


def f_bot_sendMessage(bot_token, chat_id, message):
    """
    Mengirimkan pesan ke bot Telegram.

    :param bot_token: Token bot dari BotFather
    :param chat_id: Chat ID penerima
    :param message: Pesan yang ingin dikirimkan
    :return: Respon API Telegram
    """
    latitude = "-6.34538256907972"
    longitude = "106.697353008316"

    maps_url = f"https://maps.app.goo.gl/YfDGVo1YgiTUuCtv5"
    l_photo = "ImgResult/B2832SYP.jpg"

    url = f"https://api.telegram.org/bot{bot_token}/sendMessage"
    payload = {
        "chat_id": chat_id,
        "text": f"Lokasi: {maps_url}",
        "photo": l_photo,
        "caption": "B2832SYP"
    }
    
    try:
        response = requests.post(url, data=payload)
        response.raise_for_status()  # Memastikan permintaan sukses
        return response.json()
    except requests.exceptions.RequestException as e:
        print(f"Error: {e}")
        return None
    
def f_bot_sendPhoto(p_bot_token, p_chatid, p_pic, p_debitorname, p_photo_path, p_license_plate, p_location, p_address, p_maps_url, p_date):

    # Format pesan
    message = f"""
    *Kepada {p_pic}*
    
    _Telah Teridentifikasi Nasabah Wanprestasi dengan detail berikut_ : 

    *Nama Nasabah* : {p_debitorname}
    *Nomor Plat*   : {p_license_plate}
    *Lokasi*       : [{p_location}]({p_maps_url})
    *Alamat*       : {p_address}
    *Tanggal*      : {p_date}
    """
    
    # Kirim pesan teks dengan foto
    url_photo = f"https://api.telegram.org/bot{p_bot_token}/sendPhoto"
    with open(p_photo_path, "rb") as photo:
        payload_photo = {
            "chat_id": p_chatid,
            "caption": message,
            "parse_mode": "Markdown",  # Gunakan Markdown untuk tautan yang bisa diklik
            # "parse_mode": "HTML",  # Gunakan Markdown untuk tautan yang bisa diklik
        }
        files_photo = {
            "photo": photo
        }
        response_photo = requests.post(url_photo, data=payload_photo, files=files_photo)

    # Hasil
    if response_photo.status_code == 200:
        print("Pesan dengan foto berhasil dikirim!")
    else:
        print("Gagal mengirim pesan:", response_photo.text)


def f_bot_sendPhoto_2(p_bot_token, p_chatid, p_pic, p_debitorname, p_photo_cv2, p_license_plate, p_location, p_address, p_maps_url, p_date):
    """
    Mengirim foto dari OpenCV langsung ke Telegram tanpa menyimpannya ke disk.
    
    Parameters:
    - p_bot_token (str): Token bot Telegram.
    - p_chatid (str): ID chat penerima.
    - p_pic (str): Penerima pesan.
    - p_debitorname (str): Nama nasabah.
    - p_photo_cv2 (numpy.ndarray): Gambar dalam format OpenCV.
    - p_license_plate (str): Nomor plat kendaraan.
    - p_location (str): Lokasi terdeteksi.
    - p_address (str): Alamat lokasi.
    - p_maps_url (str): URL Google Maps.
    - p_date (str): Tanggal kejadian.
    """

    # Format pesan
    message = f"""
*Kepada {p_pic}*

_Telah Teridentifikasi Nasabah Wanprestasi dengan detail berikut_ : 

*Nama Nasabah* : {p_debitorname}
*Nomor Plat*   : {p_license_plate}
*Lokasi*       : [{p_location}]({p_maps_url})
*Alamat*       : {p_address}
*Tanggal*      : {p_date}
"""
    
    # Encode gambar dari OpenCV ke format JPEG di memori
    _, buffer = cv2.imencode('.jpg', p_photo_cv2)
    image_io = io.BytesIO(buffer)

    # Kirim pesan dengan foto ke Telegram
    url_photo = f"https://api.telegram.org/bot{p_bot_token}/sendPhoto"
    files_photo = {"photo": ("image.jpg", image_io.getvalue(), "image/jpeg")}
    payload_photo = {
        "chat_id": p_chatid,
        "caption": message,
        "parse_mode": "Markdown"
    }

    response_photo = requests.post(url_photo, data=payload_photo, files=files_photo)

    # Hasil
    if response_photo.status_code == 200:
        print("Pesan dengan foto berhasil dikirim!")
    else:
        print("Gagal mengirim pesan:", response_photo.text)