import pandas as pd
import pyodbc
import os

# Ganti sesuai konfigurasi Anda
server = os.getenv('db_server')
database = os.getenv('db_name')
username = os.getenv('db_userid')
password = os.getenv('bd_userpwd')
table_name = 'TransVehiceLicense'

# Path ke file CSV
csv_file_path = 'plate_results.csv'

# Membaca CSV dengan delimiter titik koma
df = pd.read_csv(csv_file_path, delimiter=',')

records = df.to_dict(orient='records')

# Membuat koneksi ke SQL Server
conn_str = (
    'DRIVER={ODBC Driver 17 for SQL Server};'
    f'SERVER={server};DATABASE={database};UID={username};PWD={password}'
)
conn = pyodbc.connect(conn_str)
cursor = conn.cursor()

for i in records:
    sql = f"""
        INSERT INTO {table_name} (
            tvl_file_name, tvl_license_number, tvl_predict_pct, tvl_label,
            tvl_confidence, tvl_latitude, tvl_longitude,
            tvl_remark, metode, tvl_capture_datetime
        ) VALUES ('{i['tvl_file_name']}','{i['tvl_license_number']}',0,'{i['tvl_label']}',{i['tvl_confidence']}, {i['tvl_latitude']},
                {i['tvl_longitude']},'{i['tvl_remark']}','{i['metode']}','{i['tvl_capture_datetime']}'
                )
        """
    print(f"{sql}")
    cursor.execute(sql)
conn.commit()

# Mengimpor data baris demi baris ke dalam tabel
# for index, row in df.iterrows():
#     cursor.execute(f'''
#         INSERT INTO {table_name} (
#             tvl_file_name, tvl_license_number, tvl_predict_pct, tvl_label,
#             tvl_confidence, tvl_latitude, tvl_longitude,
#             tvl_remark, metode, tvl_capture_datetime
#         ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
#     ''', tuple(row))
# conn.commit()

# Menutup koneksi
cursor.close()
conn.close()

print("✅ Data berhasil diimpor ke SQL Server.")
