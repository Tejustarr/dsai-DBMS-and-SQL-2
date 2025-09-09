-- sample_queries.sql
SELECT * FROM employees;
SELECT emp_id, first_name, salary FROM employees WHERE salary > 55000 ORDER BY salary DESC LIMIT 10;
SELECT * FROM employees WHERE first_name LIKE 'A%';
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 80000;
INSERT INTO employees (emp_id, first_name, last_name, email, hire_date, salary, dept_id)
VALUES (104, 'Neha', 'Verma', 'neha.verma@example.com', '2025-02-10', 45000.00, 1);
UPDATE employees SET salary = salary * 1.05 WHERE emp_id = 102;
DELETE FROM employees WHERE emp_id = 103;
ALTER TABLE employees ADD COLUMN phone VARCHAR(20);
