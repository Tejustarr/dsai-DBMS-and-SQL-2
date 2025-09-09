# Session 7: Transaction Processing & Views

## Part A: Transaction Processing

### 1. What is Transaction Processing?
- A **transaction** is a unit of work executed against a database. 
- Ensures **ACID** properties: Atomicity, Consistency, Isolation, Durability.

### 2. Transactional Model
- Group of SQL statements treated as one.
- Start: `BEGIN` or `START TRANSACTION`
- End: `COMMIT` (save changes) or `ROLLBACK` (undo changes).

### 3. Isolation & Models
Isolation levels control how transactions interact:
- **READ UNCOMMITTED:** dirty reads possible.
- **READ COMMITTED:** only committed data visible.
- **REPEATABLE READ:** consistent reads during transaction.
- **SERIALIZABLE:** highest, transactions appear sequential.

### 4. SAVEPOINT & RELEASE SAVEPOINT
- `SAVEPOINT sp1;` creates a marker within transaction.
- `ROLLBACK TO sp1;` rolls back only to that point.
- `RELEASE SAVEPOINT sp1;` removes savepoint.

### 5. Locking Levels
- **Shared lock:** read but not write.
- **Exclusive lock:** write and prevent reads.
- Locks ensure data integrity but can cause deadlocks.

---

## Part B: Views

### 1. What is a View?
- Virtual table based on query result.
- Created with `CREATE VIEW`.

### 2. Types of Views
- **Simple View:** from one table.
- **Joined View:** from multiple tables.
- **Horizontal View:** subset of rows.
- **Vertical View:** subset of columns.
- **Row-Column Subset View:** subset of both.

### 3. Group View
- Uses aggregates and GROUP BY.

### 4. CHECK OPTION
- Restricts modifications through view to rows that match view condition.

### 5. DROP VIEW
- Remove a view.

### Examples:
```sql
-- Simple view
CREATE VIEW emp_names AS SELECT first_name, last_name FROM employees;

-- Joined view
CREATE VIEW emp_dept AS SELECT e.first_name, d.dept_name
FROM employees e JOIN departments d ON e.dept_id=d.dept_id;

-- With CHECK OPTION
CREATE VIEW high_salary AS
SELECT * FROM employees WHERE salary > 70000
WITH CHECK OPTION;
```

---
This concludes Session 7 notes.
