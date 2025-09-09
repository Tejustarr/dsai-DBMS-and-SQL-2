-- solutions.sql

-- Q1
SELECT emp_id, ROW_NUMBER() OVER (ORDER BY salary DESC) FROM employees;

-- Q2
SELECT emp_id, RANK() OVER (ORDER BY salary DESC), DENSE_RANK() OVER (ORDER BY salary DESC) FROM employees;

-- Q3
SELECT emp_id, NTILE(4) OVER (ORDER BY salary) FROM employees;

-- Q4
SELECT emp_id, LAG(salary) OVER (ORDER BY hire_date), LEAD(salary) OVER (ORDER BY hire_date) FROM employees;

-- Q5
SELECT emp_id, dept_id,
       FIRST_VALUE(salary) OVER (PARTITION BY dept_id ORDER BY hire_date),
       LAST_VALUE(salary) OVER (PARTITION BY dept_id ORDER BY hire_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM employees;

-- Q6
WITH RECURSIVE nums(n) AS (
  SELECT 1 UNION ALL SELECT n+1 FROM nums WHERE n < 20
)
SELECT * FROM nums;

-- Q8
CREATE TABLE t_salary (id INT, salary DECIMAL(10,2) CHECK (salary >= 0));
