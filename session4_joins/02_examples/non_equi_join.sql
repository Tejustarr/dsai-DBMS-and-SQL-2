-- non_equi_join.sql
-- Example: Join employees with salary grades table
SELECT e.first_name, e.salary, g.grade_label
FROM employees e
JOIN salary_grades g ON e.salary BETWEEN g.min_salary AND g.max_salary;
