# *-*-*-*-*-*-*-*-* ---- ----------------------- ---- *-*-*-*-*-*-*-*-*
# *-*-*-*-*-*-*-*-* ---- Challenge Task


# Create a table called students and within the table add the following columns
# 1- Student ID
# 2- First Name
# 3- Last Name
# 4- Email Address

# After the table is created, insert four records into the Database
# Once the Database is populated with data, query the database to retrieve all the email addresses

# For solution, use the following two approaches
# 1- SQLite module
# 2- SQLAlchemy

# import sqlite3

# with sqlite3.connect("students_sqlite.db") as connection:
#     cursor = connection.cursor()

#     cursor.execute("""CREATE TABLE IF NOT EXISTS Students 
#                     (
#                     student_id INTEGER PRIMARY KEY AUTOINCREMENT,
#                     first_name TEXT,
#                     last_name TEXT,
#                     email_address TEXT
#                      )""")

#     # student_records = [
#     #     ("Alexander", "Hunold", "alexander.hunold@el.cool"),
#     #     ("Nancy", "Pelosi", "nancy.pelosi@el.cool"),
#     #     ("Irene", "Mikkilineni", "irene.mikkilineni@el.cool"),
#     #     ("Sarah", "Bell", "sarah.bell@el.cool")
#     # ]

#     # cursor.executemany('''INSERT INTO Students (first_name, last_name, email_address)
#     #                       VALUES (?,?,?) ''', student_records)

#     # cursor.execute("SELECT * FROM Students")
#     # print(cursor.fetchall())

#     cursor.execute("SELECT email_address FROM Students")
#     print(cursor.fetchall())

#     connection.commit()



import sqlalchemy

engine = sqlalchemy.create_engine("sqlite:///students_sqlalchemy.db")

connection = engine.connect()

metadata = sqlalchemy.MetaData()

students = sqlalchemy.Table("Students", metadata,
                            sqlalchemy.Column(
                                "student_id", sqlalchemy.Integer, primary_key=True),
                            sqlalchemy.Column("first_name", sqlalchemy.Text),
                            sqlalchemy.Column("last_name", sqlalchemy.Text),
                            sqlalchemy.Column("email_address", sqlalchemy.Text)
                            )

metadata.create_all(engine)

student_records = students.insert().values([
    {"first_name": "Alexander", "last_name": "Hunold",
     "email_address": "alexander.hunold@el.cool"},
    {"first_name": "Nancy", "last_name": "Pelosi",
        "email_address": "nancy.pelosi@el.cool"},
    {"first_name": "Irene", "last_name": "Mikkilineni",
        "email_address": "irene.mikkilineni@el.cool"},
    {"first_name": "Sarah", "last_name": "Bell",
        "email_address": "sarah.bell@el.cool"}
])


connection.execute(student_records)

selection_query = sqlalchemy.select([students.columns.email_address])
selection_result = connection.execute(selection_query)

print(selection_result.fetchall())
