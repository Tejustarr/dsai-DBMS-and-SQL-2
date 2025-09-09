-- scalar.sql

-- Scalar subquery
SELECT e.first_name, (SELECT dept_name FROM departments d WHERE d.dept_id=e.dept_id) AS dept
FROM employees e;
