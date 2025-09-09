-- outer_joins.sql

-- LEFT JOIN
SELECT e.first_name, d.dept_name
FROM employees e LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- RIGHT JOIN (not supported in SQLite)
SELECT e.first_name, d.dept_name
FROM employees e RIGHT JOIN departments d ON e.dept_id = d.dept_id;

-- FULL OUTER JOIN (not supported in SQLite/MySQL, works in Postgres/Oracle)
SELECT e.first_name, d.dept_name
FROM employees e FULL OUTER JOIN departments d ON e.dept_id = d.dept_id;
