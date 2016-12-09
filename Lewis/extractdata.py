import sqlite3
db = sqlite3.connect('mydatabase.db')
cursor = db.cursor()
cursor.execute('''SELECT tdate, ttime, zone, temperature FROM temps''')
allrows = cursor.fetchall()
for row in allrows:
	print('{0}, {1}, {2}, {3}'.format(row[0], row[1], row[2], row[3]))
db.close()
