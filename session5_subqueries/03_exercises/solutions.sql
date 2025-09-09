-- solutions.sql

-- Q1
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

-- Q2
SELECT first_name FROM employees
WHERE dept_id IN (SELECT dept_id FROM departments WHERE dept_name='Sales');

-- Q3
SELECT first_name FROM employees
WHERE salary > ALL(SELECT salary FROM employees e JOIN departments d ON e.dept_id=d.dept_id WHERE d.dept_name='HR');

-- Q4
SELECT dept_name FROM departments d
WHERE NOT EXISTS (SELECT 1 FROM employees e WHERE e.dept_id=d.dept_id);

-- Q5
SELECT dept_id, avg_salary
FROM (SELECT dept_id, AVG(salary) AS avg_salary FROM employees GROUP BY dept_id) t;

-- Q6
WITH dept_avg AS (SELECT dept_id, AVG(salary) AS avg_salary FROM employees GROUP BY dept_id)
SELECT * FROM dept_avg WHERE avg_salary > 70000;

-- Q7
SELECT e.first_name, (SELECT dept_name FROM departments d WHERE d.dept_id=e.dept_id) AS dept
FROM employees e;

-- Q8
SELECT * FROM employees e
WHERE (dept_id, salary) IN (SELECT dept_id, MAX(salary) FROM employees GROUP BY dept_id);
