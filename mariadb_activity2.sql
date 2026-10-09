-- Select the database
USE school;

-- 1. Create the enrollments table
CREATE TABLE IF NOT EXISTS enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE
);

-- 2. Add foreign key constraints
ALTER TABLE enrollments 
ADD CONSTRAINT fk_student 
FOREIGN KEY (student_id) REFERENCES students(id);

ALTER TABLE enrollments 
ADD CONSTRAINT fk_course 
FOREIGN KEY (course_id) REFERENCES courses(course_id);

-- 3. Insert sample records (5+ students, 5+ courses, 10+ enrollments)
INSERT INTO students (name, course, year_level) VALUES
('Juan Dela Cruz', 'BSIT', 3),
('Maria Santos', 'BSCS', 2),
('Pedro Reyes', 'BSIS', 3),
('Ana Gomez', 'BSIT', 1),
('Luis Torralba', 'BSCS', 4)
ON DUPLICATE KEY UPDATE id=id;

INSERT INTO courses (course_name, description, units) VALUES
('Web Development', 'Frontend and Backend Development', 3),
('Database Systems', 'Relational Database Management Systems', 3),
('Programming 101', 'Introductory Computer Programming', 3),
('Data Structures', 'Algorithms and Data Structures', 3),
('Cybersecurity Basics', 'Fundamentals of Network & System Security', 3)
ON DUPLICATE KEY UPDATE course_id=course_id;

INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2026-10-07'),
(1, 2, '2026-10-07'),
(2, 1, '2026-10-07'),
(2, 4, '2026-10-07'),
(3, 3, '2026-10-07'),
(3, 5, '2026-10-07'),
(4, 1, '2026-10-07'),
(4, 3, '2026-10-07'),
(5, 2, '2026-10-07'),
(5, 4, '2026-10-07');