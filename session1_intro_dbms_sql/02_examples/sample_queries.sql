-- sample_queries.sql
-- Basic DQL, DML, and examples for Session 1

-- SELECT basics
SELECT * FROM employees;

-- SELECT with WHERE and operators
SELECT emp_id, first_name, last_name, salary FROM employees
WHERE salary > 55000 ORDER BY salary DESC LIMIT 10;

-- Compound conditions (AND / OR / NOT)
SELECT emp_id, first_name, last_name, dept_id FROM employees
WHERE (dept_id = 1 OR dept_id = 2) AND salary >= 60000;

-- LIKE and wildcards
SELECT emp_id, first_name, last_name FROM employees
WHERE first_name LIKE 'A%'; -- names starting with 'A'

-- BETWEEN and IN
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 80000;
SELECT * FROM employees WHERE dept_id IN (1,3);

-- DML: INSERT (another row)
INSERT INTO employees (emp_id, first_name, last_name, email, hire_date, salary, dept_id)
VALUES (104, 'Neha', 'Verma', 'neha.verma@example.com', '2025-02-10', 45000.00, 1);

-- UPDATE example
UPDATE employees SET salary = salary * 1.05 WHERE emp_id = 102;

-- DELETE example
DELETE FROM employees WHERE emp_id = 103;

-- ALTER table: add a column, modify column (syntax varies)
ALTER TABLE employees ADD COLUMN phone VARCHAR(20);

-- Simple date function examples (Postgres / MySQL)
-- Age in days since hire_date (Postgres)
SELECT emp_id, first_name, hire_date, CURRENT_DATE - hire_date AS days_employed FROM employees;

-- Extract year (works in many DBs with slight function name changes)
SELECT emp_id, first_name, EXTRACT(YEAR FROM hire_date) AS hire_year FROM employees;

-- Using COALESCE to handle missing data
SELECT emp_id, COALESCE(email, 'no-email@example.com') AS email_address FROM employees;

-- LIMIT / OFFSET pagination
SELECT * FROM employees ORDER BY emp_id LIMIT 2 OFFSET 0;

-- Notes:
-- Some functions (EXTRACT, CURRENT_DATE) vary between DBMS — adjust for MySQL/SQLite as needed.
