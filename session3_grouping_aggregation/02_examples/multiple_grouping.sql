-- multiple_grouping.sql

-- Count employees per dept and hire year (Postgres/MySQL)
SELECT dept_id, EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(*) AS emp_count
FROM employees
GROUP BY dept_id, EXTRACT(YEAR FROM hire_date);
