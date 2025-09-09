-- solutions.sql

-- Q1
SELECT * FROM employees WHERE salary < 60000;

-- Q2
SELECT * FROM employees WHERE dept_id IN (1,2);

-- Q3
SELECT * FROM employees WHERE first_name LIKE 'R%';

-- Q4
SELECT * FROM employees WHERE email IS NULL;

-- Q5
SELECT dept_id FROM employees
UNION
SELECT dept_id FROM departments;

-- Q6
SELECT dept_id FROM employees
UNION ALL
SELECT dept_id FROM departments;

-- Q7
SELECT dept_id FROM employees
INTERSECT
SELECT dept_id FROM departments;

-- Q8
SELECT dept_id FROM departments
EXCEPT
SELECT dept_id FROM employees;

-- Q9
SELECT first_name, salary, ROUND(salary,-3) AS rounded_salary FROM employees;

-- Q10
SELECT first_name, UPPER(first_name), LENGTH(first_name) FROM employees;

-- Q11 (Postgres)
SELECT first_name, EXTRACT(YEAR FROM hire_date) AS hire_year FROM employees;

-- Q12
SELECT first_name, COALESCE(email,'unknown') AS email FROM employees;

-- Q13
SELECT * FROM employees ORDER BY dept_id ASC, salary DESC;

-- Q14
SELECT * FROM employees WHERE (dept_id IN (1,2)) AND salary > 55000;
