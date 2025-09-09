-- select_predicates.sql
-- WHERE with comparison operators, IN, BETWEEN, LIKE, LIMIT, NULL checks

SELECT * FROM employees WHERE salary > 60000;

SELECT * FROM employees WHERE salary BETWEEN 50000 AND 80000;

SELECT * FROM employees WHERE dept_id IN (1,3);

SELECT * FROM employees WHERE first_name LIKE 'A%';

SELECT * FROM employees WHERE last_name LIKE '__a%';

SELECT * FROM employees WHERE email IS NULL;

SELECT * FROM employees ORDER BY salary DESC LIMIT 5 OFFSET 0;
