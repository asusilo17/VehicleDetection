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
from Model.sqlProcess import f_sql_savePlateIdentification, f_sql_checking_wanprestasi

data = f_sql_checking_wanprestasi('A120YV',2)

# if data:
# print(f"data : {data}")
if data != 'None':
    print(f"data : {data}")
