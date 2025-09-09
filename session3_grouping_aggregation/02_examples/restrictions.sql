-- restrictions.sql

-- Invalid: column not in GROUP BY
-- SELECT dept_id, first_name FROM employees GROUP BY dept_id; -- error

-- Correct: aggregate non-grouped column
SELECT dept_id, COUNT(first_name) FROM employees GROUP BY dept_id;
