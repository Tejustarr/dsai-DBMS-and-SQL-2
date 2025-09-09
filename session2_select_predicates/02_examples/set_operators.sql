-- set_operators.sql

-- UNION vs UNION ALL
SELECT dept_id FROM employees
UNION
SELECT dept_id FROM departments;

SELECT dept_id FROM employees
UNION ALL
SELECT dept_id FROM departments;

-- INTERSECT (not in MySQL, but in Postgres/Oracle/SQLite 3.5+)
SELECT dept_id FROM employees
INTERSECT
SELECT dept_id FROM departments;

-- EXCEPT (Postgres/SQLite) or MINUS (Oracle)
SELECT dept_id FROM departments
EXCEPT
SELECT dept_id FROM employees;
