-- value_functions.sql

SELECT emp_id, salary,
       LAG(salary) OVER (ORDER BY hire_date) AS prev_salary,
       LEAD(salary) OVER (ORDER BY hire_date) AS next_salary,
       FIRST_VALUE(salary) OVER (PARTITION BY dept_id ORDER BY hire_date) AS first_sal,
       LAST_VALUE(salary) OVER (PARTITION BY dept_id ORDER BY hire_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_sal
FROM employees;
