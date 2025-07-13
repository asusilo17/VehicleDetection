import csv
import os
from datetime import datetime

def f_savePlateIdentification_to_csv(
    p_file_name, p_license_number, p_predict_pct=0, p_label="",
    p_confidence=0, p_latitude=0, p_longitude=0,
    p_remark="", p_metode=""
):
    csv_filename = "plate_results.csv"
    file_exists = os.path.isfile(csv_filename)

    # Ambil waktu saat ini dalam format 'YYYY-MM-DD HH:MM:SS'
    created_date = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    # Data yang akan ditulis
    row = [
        p_file_name, p_license_number, p_predict_pct, p_label,
        p_confidence, p_latitude, p_longitude, p_remark,
        p_metode, created_date
    ]

    # Menulis ke file CSV
    with open(csv_filename, mode='a', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        if not file_exists:
            # Header kolom (jika file belum ada)
            writer.writerow([
                "tvl_file_name", "tvl_license_number", "tvl_predict_pct", "tvl_label",
                "tvl_confidence", "tvl_latitude", "tvl_longitude",
                "tvl_remark", "metode", "tvl_capture_datetime"
            ])
        writer.writerow(row)
