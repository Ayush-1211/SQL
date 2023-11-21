USE university4;
CREATE DATABASE university4;

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

SELECT * FROM student;

TRUNCATE TABLE student;