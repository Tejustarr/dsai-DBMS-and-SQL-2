-- transaction.sql

BEGIN TRANSACTION;

UPDATE employees SET salary = salary * 1.10 WHERE dept_id=1;

SAVEPOINT before_delete;

DELETE FROM employees WHERE emp_id=104;

-- Rollback to savepoint if needed
ROLLBACK TO before_delete;

-- Commit final changes
COMMIT;
