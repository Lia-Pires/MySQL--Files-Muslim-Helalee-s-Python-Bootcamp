--  CONSTRAINTS 

USE sql_course;

-- Example 59
CREATE TABLE students (
student_id INTEGER,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
CONSTRAINT
PK_student_id
PRIMARY KEY
(student_id)
);
-- ----------------------------
