# Session 6: Window Functions & Data Integrity

## Part A: Window Functions

### 1. Introduction
- A **window function** performs a calculation across a set of table rows related to the current row.
- Syntax: 
```sql
function_name(args) OVER (PARTITION BY col ORDER BY col)
```

### 2. Ranking Functions
- **ROW_NUMBER()** – sequential numbering.
- **RANK()** – gaps in ranking for ties.
- **DENSE_RANK()** – no gaps for ties.
- **NTILE(n)** – divides rows into n buckets.

### 3. Distribution Functions
- **PERCENT_RANK()** – relative rank (0 to 1).
- **CUME_DIST()** – cumulative distribution.

### 4. Value Functions
- **LEAD()** – get value from next row.
- **LAG()** – get value from previous row.
- **FIRST_VALUE()** – first value in partition.
- **LAST_VALUE()** – last value in partition.

### Example:
```sql
SELECT emp_id, salary,
       RANK() OVER (ORDER BY salary DESC) AS rnk,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS drnk
FROM employees;
```

### 5. Recursive Query Expression
- Use `WITH RECURSIVE` to create iterative queries.
- Example: generate sequence of numbers.
```sql
WITH RECURSIVE nums(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM nums WHERE n < 10
)
SELECT * FROM nums;
```

---

## Part B: Data Integrity

### 1. Column Check Constraints
- Ensure column values meet condition.
```sql
salary DECIMAL(10,2) CHECK (salary >= 0);
```

### 2. Uniqueness and Null Values
- UNIQUE ensures no duplicates, but NULLs may repeat (varies by DBMS).

### 3. Referential Integrity Problems
- Occurs when child references missing parent.

### 4. ACID Properties
- **Atomicity**: all or nothing.
- **Consistency**: valid state transitions.
- **Isolation**: concurrent transactions independent.
- **Durability**: committed data survives failures.

### 5. Normalization
- **1NF**: atomic values, no repeating groups.
- **2NF**: 1NF + no partial dependency.
- **3NF**: 2NF + no transitive dependency.
- **BCNF**: stricter 3NF.

### 6. Delete and Update Rules
- Foreign key actions: CASCADE, SET NULL, RESTRICT, NO ACTION.

### 7. Cascaded Deletes and Updates
```sql
FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE ON UPDATE CASCADE;
```

### 8. Referential Cycles
- Circular foreign key references – complex to manage.

### 9. Foreign Keys and NULL Values
- NULL in FK allowed (means "no relationship").

---
This concludes Session 6 notes.
