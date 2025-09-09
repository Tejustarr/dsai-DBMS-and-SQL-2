-- lab_setup.sql
CREATE TABLE departments (dept_id INT PRIMARY KEY, dept_name VARCHAR(100));
CREATE TABLE employees (emp_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), dept_id INT, FOREIGN KEY (dept_id) REFERENCES departments(dept_id));
