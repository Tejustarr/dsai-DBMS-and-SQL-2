-- group_functions.sql

-- Count all employees
SELECT COUNT(*) FROM employees;

-- Average salary overall
SELECT AVG(salary) FROM employees;

-- Max and Min salary
SELECT MAX(salary), MIN(salary) FROM employees;

-- Sum of salaries
SELECT SUM(salary) FROM employees;
