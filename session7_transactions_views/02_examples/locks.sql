-- locks.sql (syntax differs by DBMS)

-- Shared lock
SELECT * FROM employees WITH (HOLDLOCK);

-- Exclusive lock
UPDATE employees SET salary=salary WHERE emp_id=101;
