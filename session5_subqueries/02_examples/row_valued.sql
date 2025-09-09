-- row_valued.sql

-- Row-valued expression
SELECT * FROM employees e
WHERE (dept_id, salary) IN (SELECT dept_id, MAX(salary) FROM employees GROUP BY dept_id);
