-- solutions.sql

-- Q1
SELECT dept_id, COUNT(*) FROM employees GROUP BY dept_id;

-- Q2
SELECT dept_id, AVG(salary) FROM employees GROUP BY dept_id;

-- Q3
SELECT MAX(salary), MIN(salary) FROM employees;

-- Q4 (Postgres/MySQL)
SELECT dept_id, EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(*)
FROM employees
GROUP BY dept_id, EXTRACT(YEAR FROM hire_date);

-- Q5
SELECT dept_id, AVG(salary) FROM employees GROUP BY dept_id HAVING AVG(salary) > 70000;

-- Q6
SELECT COUNT(*) FROM employees HAVING COUNT(*) > 3;

-- Q7
-- Error if first_name not aggregated.
SELECT dept_id, COUNT(first_name) FROM employees GROUP BY dept_id;
