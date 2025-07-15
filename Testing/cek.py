def correct_ocr_plate_dynamic(plate):
    if not plate:
        return plate

    # Aturan OCR yang sering keliru
    ocr_correction_map = {
        '0': 'O',
        '1': 'I',
        '5': 'S',
        '8': 'B',
        '2': 'Z'
    }

    # Cari dari belakang: deteksi bagian huruf
    i = len(plate) - 1
    while i >= 0 and plate[i].isalpha():
        i -= 1

    # Jika ditemukan bagian huruf (1-3 karakter di akhir)
    letter_part = plate[i+1:]
    number_part = plate[:i+1]

    # Koreksi bagian huruf
    corrected_letter_part = ''.join(ocr_correction_map.get(ch, ch) for ch in letter_part)

    return number_part + corrected_letter_part
