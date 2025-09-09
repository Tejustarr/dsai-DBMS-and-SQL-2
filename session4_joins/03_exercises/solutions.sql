-- solutions.sql

-- Q1
SELECT e.first_name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- Q2
SELECT e.first_name, d.dept_name
FROM employees e LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- Q3 (Postgres/MySQL)
SELECT e.first_name, d.dept_name
FROM employees e RIGHT JOIN departments d ON e.dept_id = d.dept_id;

-- Q4
SELECT e.first_name, p.project_name
FROM employees e
JOIN projects p ON e.emp_id = p.emp_id;

-- Q5
SELECT d.dept_name, COUNT(e.emp_id)
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Q6
SELECT e.first_name, d.dept_name
FROM employees e CROSS JOIN departments d;

-- Q7
-- Assuming salary_grades(min_salary, max_salary, grade_label)
SELECT e.first_name, e.salary, g.grade_label
FROM employees e
JOIN salary_grades g ON e.salary BETWEEN g.min_salary AND g.max_salary;
