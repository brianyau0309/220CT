import pymysql

db =pymysql.connect(user="root", password="",
                       db="mydb", cursorclass=pymysql.cursors.DictCursor)
cursor = db.cursor()

cursor.execute('SELECT VERSION()')
version = cursor.fetchone()
print("Version: ", version.get('VERSION()'))

cursor.execute('SELECT * FROM mytb')
for row in cursor.fetchall():
    print(row)

db.close()
