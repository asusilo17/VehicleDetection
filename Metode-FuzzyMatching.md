# Fuzzy Matching

Fuzzy matching adalah metode pencocokan teks yang memungkinkan pencarian dan perbandingan string yang tidak persis sama (tidak exact) tetapi masih mirip secara ejaan atau bentuk. Ini sangat berguna dalam konteks hasil OCR, yang bisa saja mengandung kesalahan kecil dalam pembacaan karakter, seperti:
- Huruf "O" terbaca sebagai angka "0"
- Huruf "I" terbaca sebagai angka "1"
- Huruf "B" terbaca sebagai "8", dan sebagainya

## 📌 Tujuan Fuzzy Matching
Tujuan utamanya adalah mengurangi false negative, yaitu kondisi ketika plat nomor yang seharusnya cocok dengan data nasabah wanprestasi tidak terdeteksi hanya karena OCR membaca satu karakter secara keliru.

## 🧠 Di Mana Fuzzy Matching Dilakukan?
Fuzzy matching bukan dilakukan langsung di database melalui query SQL biasa, tetapi:
- Dilakukan di backend (Python) setelah hasil OCR keluar sebagai string teks.
- Baru kemudian hasilnya dibandingkan dengan data plat nomor di database leasing.

## 📍 Cara Implementasi
Misalnya sistem backend Anda dibuat dengan Python, maka proses fuzzy matching bisa dilakukan dengan pustaka seperti:
- fuzzywuzzy (meskipun sekarang sudah deprecated)
- rapidfuzz (lebih cepat dan lebih dianjurkan)
- Atau difflib.get_close_matches (bawaan Python)
Contoh:
```python
from rapidfuzz import process, fuzz

ocr_result = "AB1234O"
database_plates = ["AB1234O", "AB12340", "AB1234Q", "AB1234D"]

# Cari plat nomor yang paling mirip dengan hasil OCR
match, score, _ = process.extractOne(ocr_result, database_plates, scorer=fuzz.ratio)

if score >= 85:  # ambang batas kemiripan
    print(f"Cocok dengan: {match} (skor: {score})")

```
Jadi, sistem akan tetap menganggap "AB1234O" dan "AB12340" itu cocok jika skor kemiripannya cukup tinggi.

## 🔁 Alur Umum Integrasi Fuzzy Matching
1. OCR menghasilkan hasil pembacaan plat nomor (misal: "AB1234O")
2. Backend sistem mengambil semua plat nomor dari database nasabah wanprestasi
3. Backend melakukan fuzzy matching satu per satu, atau secara batch
4. Jika ada kecocokan di atas ambang batas (misalnya 85%), sistem anggap cocok
5. Lanjut ke proses notifikasi (misalnya kirim Telegram)

##✅ Keunggulan Fuzzy Matching
- Tahan terhadap kesalahan minor hasil OCR
- Mengurangi plat nomor lolos deteksi karena typo
- Fleksibel dalam penerapan

## 🛑 Catatan
- Jangan gunakan fuzzy matching secara langsung dalam SQL query karena akan boros resource dan lambat. SQL cocok untuk exact match saja.
- Fuzzy matching cocok diterapkan di backend OCR setelah hasil dibaca dan sebelum diverifikasi ke database.


#QnA
ocr_result = "AB1234O"
database_plates = ["AB1234O", "AB12340", "AB1234Q", "AB1234D"]

dari mana nilai dari database_plates ini, dasarnya darimana sehingga bisa didapatkan serangkaian nilai tersebut

## 📌 1. Sumber database_plates
Nilai-nilai dalam database_plates diambil dari tabel database yang berisi plat nomor kendaraan milik nasabah wanprestasi.

Contoh tabel:
```sql
TABEL: nasabah_wanprestasi
+----------------+-------------+-------------+
| id_nasabah     | nama        | plat_nomor  |
+----------------+-------------+-------------+
| 001            | Joko        | AB1234O     |
| 002            | Santi       | B1234XY     |
| 003            | Dedi        | AB12340     |
| 004            | Lina        | AB1234Q     |
+----------------+-------------+-------------+

```
Jadi, database_plates didapatkan dari query seperti ini di backend:
```python
import mysql.connector

# Koneksi ke database
conn = mysql.connector.connect(
    host="localhost",
    user="user",
    password="password",
    database="leasing"
)

cursor = conn.cursor()
cursor.execute("SELECT plat_nomor FROM nasabah_wanprestasi")
results = cursor.fetchall()

# Hasilnya disimpan sebagai list untuk fuzzy matching
database_plates = [row[0] for row in results]

```

## 📌 2. Mengapa Data Ini Diperlukan untuk Fuzzy Matching?
Karena hasil OCR tidak selalu akurat 100%, maka kita perlu membandingkan hasil OCR (misal "AB1234O") dengan semua plat nomor milik nasabah wanprestasi yang sudah diketahui sebelumnya.

Misalnya:
| Hasil OCR | Plat nomor database | Cocok secara fuzzy?               |
| --------- | ------------------- | --------------------------------- |
| `AB1234O` | `AB12340`           | ✅ (hanya perbedaan satu karakter) |
| `AB1234O` | `AB1234D`           | ✅                                 |
| `AB1234O` | `B1234XY`           | ❌                                 |


## 📌 3. Kesimpulan
- database_plates = daftar plat nomor nasabah wanprestasi dari database.
- Diambil melalui query ke database, bukan ditulis manual.
- Digunakan untuk membandingkan hasil OCR dengan plat nomor yang mungkin cocok, meskipun tidak 100% sama.
- Fuzzy matching akan memilih plat nomor dari database yang paling mirip dengan hasil OCR.

# Question
untuk teknik pengambilan datanya berarti dengan mengambil seluruh populasi kandidat, misalnya ada 1000 kandidat maka akan dimasukan ke database_plates?

## Answer
dalam pendekatan fuzzy matching seperti yang Anda bangun, seluruh populasi kandidat plat nomor (misalnya 1000 entri dari nasabah wanprestasi) akan diambil terlebih dahulu dan dimasukkan ke dalam list database_plates untuk dibandingkan dengan hasil OCR.

Namun, agar sistem tetap efisien dan tidak terlalu berat, berikut beberapa strategi optimisasi yang umum dilakukan:

## ✅ 1. Ambil Seluruh Populasi (Full Candidate List)
Pendekatan ini paling umum dan cocok jika:
- Jumlah data tidak terlalu besar (misalnya < 5000 plat nomor).
- Perbandingan dilakukan secara cepat di memori dengan library seperti rapidfuzz.
contoh
```sql
# Ambil semua plat nomor nasabah wanprestasi
SELECT plat_nomor FROM nasabah_wanprestasi
```
Lalu simpan dalam list Python dan lakukan fuzzy match.

## ✅ 2. Optimisasi dengan Filter Awal (Optional)
Jika data besar (misalnya > 50.000), maka bisa dilakukan pre-filter sebelum fuzzy match, contohnya:
- Filter berdasarkan prefix hasil OCR: "AB" → ambil hanya plat nomor dengan awalan "AB%" di SQL.
- Atau pakai struktur indexing seperti BK-tree / Locality Sensitive Hashing jika ingin performa sangat tinggi (lebih kompleks dan jarang dibutuhkan untuk sistem skala kecil-menengah).

Contoh filter:
```sql
SELECT plat_nomor FROM nasabah_wanprestasi WHERE plat_nomor LIKE 'AB%'
```

## ✅ 3. Batasan Minimum Skor Kemiripan
Setelah fuzzy matching dilakukan, biasanya hanya nilai dengan skor kemiripan tertentu yang dianggap cocok.

Misalnya dengan rapidfuzz:
```python
from rapidfuzz import process

ocr_result = "AB1234O"
matches = process.extract(ocr_result, database_plates, limit=5, score_cutoff=80)
```
Artinya: hanya ambil 5 kandidat terbaik dengan kemiripan minimal 80%.

## 🔁 Ringkasan
| Langkah                            | Penjelasan                                     |
| ---------------------------------- | ---------------------------------------------- |
| Ambil semua kandidat dari database | `SELECT plat_nomor FROM nasabah_wanprestasi`   |
| Lakukan fuzzy matching di backend  | Gunakan `rapidfuzz` atau teknik serupa         |
| Optimalkan jika data besar         | Pakai filter SQL (prefix) atau struktur indeks |
| Gunakan threshold kemiripan        | Agar tidak ada false match terlalu jauh        |
