-- solutions.sql

-- Q1
BEGIN; UPDATE employees SET salary = salary*1.05 WHERE dept_id=2; COMMIT;

-- Q2
BEGIN;
SAVEPOINT s1;
DELETE FROM employees WHERE emp_id=103;
ROLLBACK TO s1;
COMMIT;

-- Q3
BEGIN; UPDATE employees SET salary=salary+1000; ROLLBACK;

-- Q4
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- Q6
CREATE VIEW emp_contact AS SELECT first_name, email FROM employees;

-- Q7
CREATE VIEW emp_dept AS SELECT e.first_name, d.dept_name FROM employees e JOIN departments d ON e.dept_id=d.dept_id;

-- Q10
CREATE VIEW dept_avg AS SELECT dept_id, AVG(salary) FROM employees GROUP BY dept_id;

-- Q11
CREATE VIEW high_salary AS SELECT * FROM employees WHERE salary>60000 WITH CHECK OPTION;

-- Q12
DROP VIEW IF EXISTS high_salary;
