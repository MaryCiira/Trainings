-- Creating the database
CREATE DATABASE edu_institute;
USE edu_institute;

-- Creating the table
CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
gender CHAR(1),
enrollment_date DATE,
program VARCHAR(50)
)

-- Inserting values into the table
INSERT INTO students
VALUES
  (101, 'Alice Johnson', 22, 'F', '2022-01-15', 'Data Science'),
  (102, 'Bob Smith', 23, 'M', '2022-02-20', 'Mathematics'),
  (103, 'Charlie Brown', 21, 'M', '2021-12-10', 'Forensics'),
  (104, 'Diana Miller', 24, 'F', '2021-11-05', 'Engineering'),
  (105, 'Eva Davis', 20, 'F', '2022-03-01', 'Medicine');

-- Selecting students in the data science program  
SELECT * FROM students 
where program = 'Data Science';

-- Finding the total number of students
SELECT count(*) FROM students AS Total_Students;

-- Finding the current date
SELECT CURRENT_DATE() AS Todays_Date;

-- Selecting student names in uppercase and their enrollment dates
SELECT upper(name), enrollment_date FROM students;

-- Selecting the number of students in each program in descending order
SELECT program, count(*) AS Number_of_Students 
FROM students 
GROUP BY program 
ORDER BY Number_of_Students DESC;

-- Selecting name and age of the youngest student
SELECT NAME, age FROM students 
WHERE age = (SELECT min(age) FROM students);