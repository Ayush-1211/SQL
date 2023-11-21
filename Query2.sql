USE university;
CREATE DATABASE university;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "Ayush", 98, "A", "Ahmedabad"),
(102, "Anand", 78, "C", "Mumbai"),
(103, "Soham", 66, "D", "Pune"),
(104, "Shalin", 88, "B", "Delhi"),
(105, "Harsh", 58, "D", "Delhi"),
(106, "Arjun", 90, "A", "Mumbai");

SELECT name, marks FROM student;
SELECT * FROM student;
SELECT DISTINCT city FROM student;

SELECT * 
FROM student 
WHERE marks > 80;

SELECT * 
FROM student 
WHERE city = "Mumbai";

SELECT * 
FROM student 
WHERE marks > 80 AND city = "Mumbai";

SELECT * 
FROM student 
WHERE marks > 90 OR city = "Mumbai";

SELECT * 
FROM student 
WHERE marks+10 > 100;

SELECT * 
FROM student 
WHERE marks BETWEEN 80 AND 90;

SELECT * 
FROM student 
WHERE city IN ("Mumbai", "Delhi");

SELECT * 
FROM student 
WHERE city NOT IN ("Mumbai", "Delhi");

SELECT * 
FROM student 
LIMIT 3;

SELECT * 
FROM student 
WHERE marks > 75
LIMIT 3;

SELECT *
FROM student
ORDER BY city ASC;

SELECT *
FROM student
ORDER BY city DESC
LIMIT 3;

SELECT MAX(marks)
FROM student;

SELECT AVG(marks)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT COUNT(rollno)
FROM student;

SELECT city, COUNT(name)
FROM student
GROUP BY city;

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks);

SELECT grade, count(rollno)
FROM student
GROUP BY grade
ORDER BY grade;

SELECT city, count(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 80;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 80
ORDER BY city ASC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";  

UPDATE student
SET marks = 59
WHERE rollno = 105;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET marks = marks + 1;

DELETE FROM student
WHERE marks < 40;