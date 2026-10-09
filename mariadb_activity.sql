CREATE DATABASE school;

USE school;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(100),
    year_level INT
);

INSERT INTO students (name, course, year_level)
VALUES
('Juan Dela Cruz', 'BSIT', 1),
('Maria Santos', 'BSCS', 2),
('Pedro Reyes', 'BSDA', 3);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    description VARCHAR(255),
    units INT
);
INSERT INTO course (course_id, course_name, description, units)
    -> VAlUES
    -> (123, 'BSIT','Webtech', 69),
    -> (456, 'BSCS','Comsci', 70),
    -> (789, 'BSDA','DataAnlytics', 71);

SELECT * FROM course;

