# Session 3: Grouping and Aggregation

## 1. Group Functions (Aggregate Functions)
Aggregate functions operate on a set of rows and return a single result.

- **COUNT(\*)** – counts rows.
- **AVG(column)** – average value.
- **MAX(column)** – maximum value.
- **MIN(column)** – minimum value.
- **SUM(column)** – total sum.

Examples:
```sql
SELECT COUNT(*) FROM employees;
SELECT AVG(salary) FROM employees WHERE dept_id=1;
SELECT MAX(hire_date), MIN(hire_date) FROM employees;
```

## 2. GROUP BY with Aggregate Functions
- Used to aggregate rows by grouping column(s).
- Every column in SELECT list must be aggregated or included in GROUP BY.

```sql
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;
```

## 3. Grouped Queries with Multiple Columns
```sql
SELECT dept_id, hire_date, COUNT(*) 
FROM employees
GROUP BY dept_id, hire_date;
```

## 4. Handling NULL in Grouping
- NULL values are grouped together as a single group.

```sql
SELECT dept_id, COUNT(*) FROM employees GROUP BY dept_id;
```

## 5. HAVING Clause
- Filters groups (like WHERE filters rows).
- Must be used with aggregate conditions.

```sql
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 60000;
```

## 6. HAVING without GROUP BY
- Treats entire table as one group.

```sql
SELECT AVG(salary) FROM employees HAVING AVG(salary) > 50000;
```

## 7. Restrictions on Grouped Queries
- Columns in SELECT must be in GROUP BY or aggregated.
- HAVING can only use aggregates or grouped columns.

---
This concludes Session 3 theory notes.
