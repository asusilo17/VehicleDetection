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

def f_sql_checking_wanprestasi(p_conn_str, p_license_number, p_location_id):
    # Koneksi ke database
    conn = pyodbc.connect(p_conn_str)

    try:
        # Membuat cursor untuk interaksi dengan database
        cursor = conn.cursor()

        # Eksekusi stored procedure
        cursor.execute(f"EXEC sp_getBlackList {p_license_number}, {p_location_id}")

        # Mengambil hasil jika ada (misal hasil SELECT)
        columns = [column[0] for column in cursor.description] if cursor.description else []
        
        # Ambil hasil dari stored procedure
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