-- lab_setup.sql (SQLite-ready)
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS salary_grades;

CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT NOT NULL
);

CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    dept_id INTEGER REFERENCES departments(dept_id),
    salary REAL
);

CREATE TABLE projects (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL,
    emp_id INTEGER REFERENCES employees(emp_id)
);

CREATE TABLE salary_grades (
    grade_id INTEGER PRIMARY KEY,
    grade_label TEXT,
    min_salary REAL,
    max_salary REAL
);

INSERT INTO departments VALUES
(1,'Engineering'),(2,'Sales'),(3,'HR');

INSERT INTO employees VALUES
(101,'Ravi',1,60000),
(102,'Asha',1,75000),
(103,'Maya',2,50000),
(104,'Neha',NULL,45000);

INSERT INTO projects VALUES
(201,'Alpha',101),
(202,'Beta',101),
(203,'Gamma',102);

INSERT INTO salary_grades VALUES
(1,'Low',0,49999),
(2,'Medium',50000,79999),
(3,'High',80000,120000);
