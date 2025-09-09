-- lab_setup.sql (SQLite-ready)
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
    hire_date DATE,
    salary REAL,
    dept_id INTEGER REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES
(1,'Engineering'),(2,'Sales'),(3,'HR');

INSERT INTO employees VALUES
(101,'Ravi','Patel','2022-11-15',60000,2),
(102,'Asha','Kumar','2023-07-01',75000,1),
(103,'Maya','Singh','2024-01-20',50000,3),
(104,'Neha','Verma','2025-02-10',45000,1),
(105,'Rohan','Das','2020-03-12',85000,1),
(106,'Priya','Sharma','2019-08-24',95000,2);
