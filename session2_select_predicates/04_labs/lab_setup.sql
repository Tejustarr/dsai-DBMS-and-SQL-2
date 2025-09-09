-- lab_setup.sql (SQLite-ready)
-- Setup data for session 2 lab

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT NOT NULL
);

CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    hire_date DATE,
    salary REAL,
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES
(1,'Engineering'),
(2,'Sales'),
(3,'HR'),
(4,'Finance');

INSERT INTO employees VALUES
(101,'Ravi','Patel','ravi@example.com','2022-11-15',60000,2),
(102,'Asha','Kumar','asha@example.com','2023-07-01',75000,1),
(103,'Maya','Singh',NULL,'2024-01-20',50000,3),
(104,'Neha','Verma','neha@example.com','2025-02-10',45000,1),
(105,'Rohan','Das','rohan@example.com','2020-03-12',85000,4);
