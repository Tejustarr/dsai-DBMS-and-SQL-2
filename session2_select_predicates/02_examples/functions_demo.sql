-- functions_demo.sql

-- Numeric
SELECT salary, ROUND(salary,0), TRUNC(salary,0), FLOOR(salary), CEIL(salary) FROM employees;

-- String
SELECT first_name, UPPER(first_name), LOWER(last_name), LENGTH(first_name) FROM employees;

-- Substring (Postgres)
SELECT SUBSTRING(first_name FROM 1 FOR 2) AS initials FROM employees;

-- Date
SELECT hire_date, CURRENT_DATE, (CURRENT_DATE - hire_date) AS days_employed FROM employees;

-- Null handling
SELECT emp_id, COALESCE(email, 'no-email@example.com') AS email_fallback FROM employees;

-- Type casting
SELECT emp_id, CAST(salary AS TEXT) FROM employees;
