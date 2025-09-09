-- lab_setup.sql (SQLite-ready)

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name TEXT
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name TEXT,
    hire_date DATE,
    salary REAL,
    dept_id INT REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES (1,'Engineering'),(2,'Sales');

INSERT INTO employees VALUES
(101,'Ravi','2022-11-15',60000,2),
(102,'Asha','2023-07-01',75000,1),
(103,'Maya','2024-01-20',50000,2),
(104,'Neha','2025-02-10',45000,1),
(105,'Rohan','2020-03-12',85000,1);
