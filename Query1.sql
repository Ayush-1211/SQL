CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;

-------------- Drop Databse ------------
DROP DATABASE college;
DROP DATABASE IF EXISTS college;

USE college;

CREATE TABLE student ( 
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);
DROP TABLE student;

INSERT INTO student VALUES(1, "Ayush");

INSERT INTO student 
(rollno, name) 
VALUES 
(2, "Anand"), 
(3, "Jay");

SELECT * FROM student;

SHOW DATABASES;
SHOW TABLES;

CREATE TABLE temp1 (
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY (id, name)
);

CREATE TABLE emp (
	id INT,
    salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES(101);

CREATE TABLE temp2 (
	id INT PRIMARY KEY,
    city VARCHAR(50),
    age INT,
    CONSTRAINT age_check CHECK (age >= 18 AND city = "Delhi")
);

CREATE TABLE temp3 (
	age INT CHECK (age >= 18)
);