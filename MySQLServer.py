import mysql.connector

try: 
    my_db = mysql.connector.connect(host="localhost",
    user="root",
    password="4578")
except mysql.connector.Error:
    print("Error while connecting")

my_cursor = my_db.cursor()
my_cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
print("Database 'alx_book_store' created successfully!")
my_cursor.execute("show databases")
for i in my_cursor:
    print(i)

my_db.close()

