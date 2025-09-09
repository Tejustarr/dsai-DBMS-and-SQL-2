-- join_groupby.sql
SELECT d.dept_name, COUNT(e.emp_id) AS emp_count
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;
