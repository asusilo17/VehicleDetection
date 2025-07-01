import pyodbc
import numpy as np
import math
import sqlite3
from datetime import datetime
import pandas as pd
import requests
from datetime import datetime
from dotenv import load_dotenv
import os

load_dotenv()

server = os.getenv("db_server")
database = os.getenv("db_name")
username = os.getenv("db_userid")
password = os.getenv("bd_userpwd")

# Membuat string koneksi
conn_str = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'
print(f"conn_str : {conn_str}")

def f_sql_savePlateIdentification (p_file_name, p_license_number, p_predict_pct=0, p_label="", p_confidence=0, p_latitude=0, p_longitude=0, p_remark=""):
    # print(f"data : {p_file_name}")
    
    conn = pyodbc.connect(conn_str)

    # Membuat cursor untuk berinteraksi dengan database
    cursor = conn.cursor()

    # print(f"p_file_name : {p_file_name}, p_detect_img : {p_license_number}, p_detect_predictval : {p_predict_pct}, p_label : {p_label}, p_confidence : {p_confidence}, p_latitude : {p_latitude}, p_longitude : {p_longitude}, p_remark : {p_remark}")
    sql = f"""insert into TransVehiceLicense (tvl_file_name, tvl_license_number, tvl_predict_pct, tvl_label, tvl_confidence, tvl_latitude, tvl_longitude, tvl_remark) values
                ('{p_file_name}', '{p_license_number}', {p_predict_pct}, '{p_label}', {p_confidence}, {p_latitude}, {p_longitude}, '{p_remark}')
                """

    cursor.execute(sql)
    # Contoh query untuk mengambil data
    # cursor.execute('''
    #     INSERT INTO TransVehiceLicense (tvl_file_name, tvl_license_number, tvl_predict_pct, tvl_label, tvl_confidence, tvl_latitude, tvl_longitude, tvl_remark)
    #     VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    #     ''', (p_file_name, p_license_number, p_predict_pct, p_label, p_confidence, p_latitude, p_longitude, p_remark))
    
    conn.commit()

    # Menutup koneksi
    cursor.close()
    conn.close()

def f_sql_getCollectorTeam(p_conn_str, p_location_id):
    # Koneksi ke database
    conn = pyodbc.connect(p_conn_str)

    try:
        # Membuat cursor untuk interaksi dengan database
        cursor = conn.cursor()

        # Eksekusi stored procedure
        cursor.execute(f"EXEC sp_getCollectorTeam {p_location_id}")
        
        # Ambil hasil dari stored procedure
        # Mengambil hasil jika ada (misal hasil SELECT)
        columns = [column[0] for column in cursor.description] if cursor.description else []

        result = cursor.fetchall()

        conn.commit()

        # Jika ada hasil, kembalikan sebagai DataFrame
        if result and columns:
            return pd.DataFrame.from_records(result, columns=columns)
        else:
            return pd.DataFrame()  # Kembalikan DataFrame kosong jika tidak ada hasil

        # Mengembalikan hasil
        # return result

    except pyodbc.Error as e:
        print(f"Error: {e}")
        return None

    finally:
        # Menutup koneksi
        cursor.close()
        conn.close()

#Jika terdeteksi sebagai Wanprestasi maka akan menyimpan data ke database
def f_sql_validate_wanprestasi(p_conn_str, p_license_number, p_location_id):
    # Koneksi ke database
    conn = pyodbc.connect(p_conn_str)

    try:
        # Membuat cursor untuk interaksi dengan database
        cursor = conn.cursor()

        # l_proc = f"EXEC sp_TransBlackListIdentification {p_license_number}, {p_location_id}"

        # cursor.execute(f"EXEC sp_TransBlackListIdentification {p_license_number}, {p_location_id}")
        cursor.execute(f"EXEC sp_TransBlackListIdentification {p_license_number}, {p_location_id}")

       # Ambil hasil dari stored procedure
        # Mengambil hasil jika ada (misal hasil SELECT)
        # columns = [column[0] for column in cursor.description] if cursor.description else []

        result = cursor.fetchall()

        conn.commit()

        # Jika ada hasil, kembalikan sebagai DataFrame
        # if result and columns:
        #     return pd.DataFrame.from_records(result, columns=columns)
        # else:
        #     return pd.DataFrame()  # Kembalikan DataFrame kosong jika tidak ada hasil
        if result:
            return result

    except pyodbc.Error as e:
        print(f"Error: {e}")
        return None

    finally:
        # Menutup koneksi
        cursor.close()
        conn.close()

def f_sql_checking_wanprestasi(p_license_number, p_location_id):
    # Koneksi ke database
    conn = pyodbc.connect(conn_str)

    try:
        # Membuat cursor untuk interaksi dengan database
        cursor = conn.cursor()

        sql = f"EXEC sp_getBlackList '{p_license_number}', {p_location_id}"
        print(f"sql : {sql}")
        # Eksekusi stored procedure
        cursor.execute(sql)

        # Mengambil hasil jika ada (misal hasil SELECT)
        columns = [column[0] for column in cursor.description] if cursor.description else []
        
        # Ambil hasil dari stored procedure
        result = cursor.fetchall()
        conn.commit()

        # Jika ada hasil, kembalikan sebagai DataFrame
        if result and columns:
            return pd.DataFrame.from_records(result, columns=columns)
            # return pd.DataFrame.from_records(result)
        else:
            return pd.DataFrame()  # Kembalikan DataFrame kosong jika tidak ada hasil

        # Mengembalikan hasil
        # return result

    except pyodbc.Error as e:
        print(f"Error: {e}")
        return None

    finally:
        # Menutup koneksi
        cursor.close()
        conn.close()

def f_sql_checking_wanprestasi_data(p_license_number, p_location_id):
    # Koneksi ke database
    conn = pyodbc.connect(conn_str)

    try:
        # Membuat cursor untuk interaksi dengan database
        cursor = conn.cursor()

        sql = f"EXEC sp_getBlackList '{p_license_number}', {p_location_id}"
        print(f"sql : {sql}")
        # Eksekusi stored procedure
        cursor.execute(sql)

        # Ambil hasil dari stored procedure
        rows = cursor.fetchall()

        data = []
        for row in rows:
            data.append({
                'PlatNumber': row[0],
                'PaymentDate': row[1],
                'LastInstallmentDate': row[2],
                'Tenur': row[3],
                'Brand': row[4],
                'Model': row[5],
                'Color': row[6],
                'FullName': row[7],
                'Gender': row[8],
                'FullAddress': row[9],
                'PhoneNumber': row[10],
                'DetectionDT': row[11],
                'LocationID': row[12],
                'LocationName': row[13],
                'Latitude': row[14],
                'Longitude': row[15],
                'Maps': row[16],
                'LocationAddress': row[17],
                'Collector': row[18],
                'CollectorPhone': row[19],
                'CollectorTelegram': row[20]
            })
        # Jika ada hasil, kembalikan sebagai DataFrame
        if data:
            return data
            # return pd.DataFrame.from_records(result)
        else:
            return data  # Kembalikan DataFrame kosong jika tidak ada hasil

        # Mengembalikan hasil
        # return result

    except pyodbc.Error as e:
        print(f"Error: {e}")
        return None

    finally:
        # Menutup koneksi
        cursor.close()
        conn.close()

def f_sql_object_detection(p_label_name, p_yolo_model, p_object_type, p_confidence, p_start_dt, p_end_dt):
    conn = pyodbc.connect(conn_str)
    cursor = conn.cursor()

    success = True

    sql = f"""insert into t_object_detection (label_name, yolo_model, object_type, confidence, process_start_dt, process_end_dt) values
                ('{p_label_name}', '{p_yolo_model}', '{p_object_type}', {p_confidence}, '{p_start_dt}', '{p_end_dt}')
            """

    try:
        print(f"sql : {sql}")
        
        cursor.execute(sql)
        conn.commit()
        cursor.close()
        conn.close()

        return True
    except Exception as e:
        conn.rollback()
        cursor.close()
        conn.close()
        
        success = False
        # return success
        raise RuntimeError(f"An unexpected error stopped the process: {e}") from e
