-- solutions.sql
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dob DATE,
    email VARCHAR(100) UNIQUE
);
INSERT INTO students (student_id, first_name, last_name, dob, email) VALUES
(1, 'Arjun', 'Mehta', '2001-05-21', 'arjun.mehta@example.com'),
(2, 'Priya', 'Sharma', '1999-09-12', 'priya.sharma@example.com'),
(3, 'Amit', 'Kumar', '2002-12-01', NULL);
