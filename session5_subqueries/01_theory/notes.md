# Session 5: Subqueries

## 1. Introduction to Subqueries
- A subquery (inner query) is a query nested inside another query.
- Can appear in SELECT, FROM, WHERE, HAVING.

### Example:
```sql
SELECT first_name
FROM employees
WHERE dept_id = (SELECT dept_id FROM departments WHERE dept_name='Engineering');
```

## 2. Subqueries with IN, ALL, ANY, SOME
- **IN:** compare value to a set of values from subquery.
```sql
SELECT first_name FROM employees
WHERE dept_id IN (SELECT dept_id FROM departments WHERE dept_name IN ('Engineering','Sales'));
```

- **ALL:** condition must be true for ALL values returned.
```sql
SELECT first_name, salary FROM employees
WHERE salary > ALL(SELECT salary FROM employees WHERE dept_id=2);
```

- **ANY / SOME:** condition must be true for at least one value.
```sql
SELECT first_name, salary FROM employees
WHERE salary > ANY(SELECT salary FROM employees WHERE dept_id=2);
```

## 3. Subqueries in WHERE
- Used for filtering.
```sql
SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
```

## 4. EXISTS / NOT EXISTS
- Checks if subquery returns any row.
```sql
SELECT dept_name FROM departments d
WHERE EXISTS (SELECT 1 FROM employees e WHERE e.dept_id=d.dept_id);
```

## 5. Subquery in FROM (Derived Tables)
- Subquery can act as a table.
```sql
SELECT dept_id, avg_salary
FROM (SELECT dept_id, AVG(salary) AS avg_salary FROM employees GROUP BY dept_id) t
WHERE avg_salary > 60000;
```

## 6. Nested Subqueries
- Subquery inside another subquery.

## 7. Set Comparison with Nested Subqueries
- Compare sets using IN, EXISTS, etc.

## 8. WITH Clause (Common Table Expressions)
- Named subquery used within query.
```sql
WITH dept_avg AS (
  SELECT dept_id, AVG(salary) AS avg_salary FROM employees GROUP BY dept_id
)
SELECT * FROM dept_avg WHERE avg_salary > 60000;
```

## 9. Scalar Subqueries
- Subquery returning a single value.
```sql
SELECT first_name, (SELECT dept_name FROM departments d WHERE d.dept_id=e.dept_id) AS dept
FROM employees e;
```

## 10. Subqueries and Joins
- Many subqueries can be rewritten as joins. Joins are often more efficient.

## 11. Row-Valued Expressions
- Compare multiple columns.
```sql
SELECT * FROM employees e
WHERE (dept_id, salary) IN (SELECT dept_id, MAX(salary) FROM employees GROUP BY dept_id);
```

## 12. Query Expressions
- Subqueries used to build larger queries.

---
This concludes Session 5 theory notes.
