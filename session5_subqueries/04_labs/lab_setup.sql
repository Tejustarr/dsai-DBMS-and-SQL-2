-- lab_setup.sql (SQLite-ready)

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT
);

CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    first_name TEXT,
    salary REAL,
    dept_id INTEGER REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES (1,'Engineering'),(2,'Sales'),(3,'HR');

INSERT INTO employees VALUES
(101,'Ravi',60000,2),
(102,'Asha',75000,1),
(103,'Maya',50000,3),
(104,'Neha',45000,1),
(105,'Rohan',85000,1);
