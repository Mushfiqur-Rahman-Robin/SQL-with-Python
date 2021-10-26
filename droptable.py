from database import cursor, db

def drop_table():
    sql = ("DROP TABLE IF EXISTS logs")
    cursor.execute(sql)
    db.commit()
    print("Table deleted")

drop_table()
