-- group_by.sql

-- Average salary per department
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

-- Count employees per department
SELECT dept_id, COUNT(*) AS emp_count
FROM employees
GROUP BY dept_id;
