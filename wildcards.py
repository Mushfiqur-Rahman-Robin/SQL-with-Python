from database import cursor, db

def search():
    sql = ("SELECT * FROM logs WHERE user LIKE %s")
    cursor.execute(sql, ('%sh%',))
    result = cursor.fetchall()

    for row in result:
        print(row)

search()