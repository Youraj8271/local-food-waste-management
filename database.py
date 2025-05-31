import sqlite3

def get_connection():
    return sqlite3.connect("food_waste.db", check_same_thread=False)

def create_tables():
    with open("create_tables.sql", "r") as f:
        sql = f.read()
    conn = get_connection()
    conn.executescript(sql)
    conn.close()
