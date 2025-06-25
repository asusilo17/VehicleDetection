import pyodbc
import numpy as np
import math
import sqlite3
from datetime import datetime
import pandas as pd
import requests
import cv2
from datetime import datetime
from dotenv import load_dotenv
import os
from Model.sqlProcess import f_sql_savePlateIdentification, f_sql_checking_wanprestasi, f_sql_checking_wanprestasi_data
from Model.botProcess import f_bot_sendMessage, f_bot_sendPhoto, f_bot_sendPhoto_2

bot_token = os.getenv('bot_token')
bot_uname = os.getenv('bot_uname')
bot_name = os.getenv('bot_name')

datas = f_sql_checking_wanprestasi_data('A1206YV',2)
rtsp_url = 'DataVideo/videoplayback_2.mp4'

image = cv2.imread("ImgTest/image_20250604224822.jpeg")
today = datetime.today()
today = today.strftime('%Y-%M-%d')

print(f"today : {today}")

# if data:
print(f"datas : {datas}")
if datas:
    # print(f"datas : {datas}")
    for data in datas:
        print(f"data : {data['Collector']}")

        f_bot_sendPhoto_2(
                            p_bot_token=bot_token,
                            p_chatid=data['CollectorTelegram'],
                            p_pic=data['Collector'],
                            p_debitorname=data['Collector'],
                            p_photo_cv2=image,
                            p_license_plate='A1206YV',
                            p_location=data['LocationName'],
                            p_address=data['LocationAddress'],
                            p_maps_url=data['Maps'],
                            p_date=today
                        )