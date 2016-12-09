import sqlite3
db = sqlite3.connect('mydatabase.db')
cursor = db.cursor()
input_date = input("What Is The Date(y-m-d)? ")
input_time = input("What The Time(h:m:s)? ")
input_r = input("What Room? ")
input_temp = input ("What Is The Temperature? ")
cursor.execute("insert into temps (tdate, ttime, zone, temperature) VALUES (?, ?, ?, ?)", (input_date, input_time, input_r, input_temp))
db.commit()
db.close()

