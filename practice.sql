-- CREATE DATABASE school_db;
Use school_db;
-- create a table called employee
CREATE TABLE students(
id INT PRIMARY KEY auto_increment,
name VARCHAR(50),
grade_level VARCHAR(20),
average_score DECIMAL(4,2)
);

-- insert to the table
INSERT INTO students(name, grade_level, average_score)
VALUES ('John Doe', 10, 88.50);
-- insert additional details
INSERT INTO students(name, grade_level, average_score)
VALUES ('Jane Smith', 10, 91.20),
		('Mark Lee', 11, 85.75),
        ('Emily Davis', 12, 90.00);
        
-- retrieve all records
SELECT * FROM students;

-- retrieve specific columns
SELECT name, average_score FROM students;

-- update a record
UPDATE students
SET average_score= '90.00'
WHERE name = 'John Doe';

-- Verify the update
SELECT * FROM students;
SELECT name, average_score FROM students;

-- delete a specific record
DELETE FROM students
WHERE name='Mark Lee';
SELECT * FROM students;

-- filter & retrieve
SELECT name FROM students WHERE grade_level=10 AND average_score>90.00;

-- order records
SELECT name, average_score FROM students ORDER BY average_score DESC;


