import mysql.connector
from mysql.connector import errorcode
from password import password

config = {
    'user': 'root',
    'password': password,
    'host': 'localhost',
    'database': 'my_db'
}

db = mysql.connector.connect(**config)
cursor = db.cursor()