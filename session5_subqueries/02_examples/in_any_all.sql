-- in_any_all.sql

-- IN
SELECT first_name FROM employees
WHERE dept_id IN (SELECT dept_id FROM departments WHERE dept_name='Engineering');

-- ALL
SELECT first_name, salary FROM employees
WHERE salary > ALL(SELECT salary FROM employees WHERE dept_id=2);

-- ANY
SELECT first_name, salary FROM employees
WHERE salary > ANY(SELECT salary FROM employees WHERE dept_id=2);
