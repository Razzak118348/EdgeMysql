CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    marks_math INT,
    marks_science INT
);
INSERT INTO students (student_id, name, age, marks_math, marks_science)
VALUES 
(1, 'Alice', 16, 85, 90),
(2, 'Bob', 17, 78, 88),
(3, 'Charlie', 16, 92, 81);

SELECT * FROM students;

SELECT name, (marks_math + marks_science) AS total_marks 
FROM students;
SELECT name, (marks_math * marks_science) AS product_of_marks 
FROM students;

SELECT name, (marks_math / marks_science) AS division_of_marks 
FROM students;

SELECT name, (marks_math - marks_science) AS difference_in_marks 
FROM students;

SELECT name ,marks_math
FROM students 
WHERE marks_math > 80;

SELECT name, (marks_math + marks_science) AS total_marks 
FROM students 
WHERE (marks_math + marks_science) > 170;

SELECT name ,age
FROM students 
WHERE age BETWEEN 16 AND 17;

SELECT name 
FROM students 
WHERE marks_math = marks_science;


SELECT  SUM(marks_math) AS total_math_marks 
FROM students 
WHERE age = 16;



