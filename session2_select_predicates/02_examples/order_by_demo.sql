-- order_by_demo.sql

-- Single column
SELECT * FROM employees ORDER BY salary DESC;

-- Multiple columns
SELECT * FROM employees ORDER BY dept_id ASC, salary DESC;
