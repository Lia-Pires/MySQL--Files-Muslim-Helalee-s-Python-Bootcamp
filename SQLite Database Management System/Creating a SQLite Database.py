# Creating a SQLite Database

# Python Database API Specification

from multiprocessing import connection
import sqlite3

with sqlite3.connect("movies_library.db") as connection:
    cursor = connection.cursor()
    cursor.execute('''
                    CREATE TABLE IF NOT EXISTS Movies (
                        Title TEXT,
                        Director TEXT,
                        Year INT
                    )
                    ''')

    connection.commit()

