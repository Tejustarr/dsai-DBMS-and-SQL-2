-- ranking_functions.sql

SELECT emp_id, salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS rownum,
       RANK() OVER (ORDER BY salary DESC) AS rnk,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS drnk,
       NTILE(3) OVER (ORDER BY salary DESC) AS quartile
FROM employees;
