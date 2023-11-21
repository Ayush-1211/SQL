USE university6;
CREATE DATABASE university6;

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

/* Sub Query */
SELECT name, marks 
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

SELECT rollno, name
FROM student
WHERE rollno IN (
	SELECT rollno
    FROM student
    WHERE rollno % 2 = 0
);

SELECT MAX(marks)
FROM student
WHERE city = "Delhi";

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Delhi") AS temp;

SELECT (SELECT MAX(marks) FROM student), name
FROM student;


/* View is one type of virtual table */
CREATE VIEW view1 AS
SELECT rollno, name, marks FROM student;

SELECT * FROM view1
WHERE marks > 90;

DROP VIEW view1;