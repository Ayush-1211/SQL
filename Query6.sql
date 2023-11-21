USE university5;
CREATE DATABASE university5;

CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student (id, name)
VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");

CREATE TABLE course (
	id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course (id, course)
VALUES
(102, "English"),
(103, "Science"),
(105, "Maths"),
(107, "Computer Science");

SELECT * FROM student;
SELECT * FROM course;

SELECT *
FROM student
INNER JOIN course
ON student.id = course.id;

SELECT *
FROM student as s
INNER JOIN course as c
ON s.id = c.id;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id;

SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

/* Left Exclusive Join */
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL;

/* Right Exclusive Join */
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL;