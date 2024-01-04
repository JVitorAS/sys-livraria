import mysql.connector

host = "localhost"
user = "root"
password = ""
database = "project"

conn = mysql.connector.connect(
    host=host,
    user=user,
    password=password,
    database=database
)

cursor = conn.cursor()
