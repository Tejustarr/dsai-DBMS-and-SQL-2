-- create_database.sql
CREATE DATABASE IF NOT EXISTS company_db;

CREATE TABLE IF NOT EXISTS departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    hire_date DATE DEFAULT CURRENT_DATE,
    salary DECIMAL(12,2) CHECK (salary >= 0),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments (dept_id, dept_name) VALUES (1, 'Engineering'), (2, 'Sales'), (3, 'HR');

INSERT INTO employees (emp_id, first_name, last_name, email, hire_date, salary, dept_id) VALUES
(101, 'Asha', 'Kumar', 'asha.kumar@example.com', '2023-07-01', 75000.00, 1),
(102, 'Ravi', 'Patel', 'ravi.patel@example.com', '2022-11-15', 60000.00, 2),
(103, 'Maya', 'Singh', NULL, '2024-01-20', 50000.00, 3);
