-- distribution_functions.sql

SELECT emp_id, salary,
       PERCENT_RANK() OVER (ORDER BY salary) AS percent_rank,
       CUME_DIST() OVER (ORDER BY salary) AS cum_dist
FROM employees;
