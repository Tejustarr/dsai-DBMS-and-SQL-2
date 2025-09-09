-- views.sql

-- Simple view
CREATE VIEW emp_names AS SELECT first_name, last_name FROM employees;

-- Joined view
CREATE VIEW emp_dept AS
SELECT e.first_name, d.dept_name
FROM employees e JOIN departments d ON e.dept_id=d.dept_id;

-- Horizontal view
CREATE VIEW sales_emps AS SELECT * FROM employees WHERE dept_id=2;

-- Vertical view
CREATE VIEW emp_contact AS SELECT first_name, email FROM employees;

-- Row-column subset view
CREATE VIEW emp_subset AS SELECT first_name, dept_id FROM employees WHERE salary>50000;

-- Group view
CREATE VIEW dept_avg AS SELECT dept_id, AVG(salary) AS avg_sal FROM employees GROUP BY dept_id;

-- CHECK OPTION
CREATE VIEW high_salary AS SELECT * FROM employees WHERE salary>70000 WITH CHECK OPTION;

-- Drop view
DROP VIEW IF EXISTS emp_names;
