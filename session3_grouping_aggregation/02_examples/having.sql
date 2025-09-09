-- having.sql

-- Departments with average salary > 60000
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 60000;

-- Having without Group By
SELECT AVG(salary) FROM employees HAVING AVG(salary) > 50000;
