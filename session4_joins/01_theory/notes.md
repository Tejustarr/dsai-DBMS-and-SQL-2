# Session 4: Joins

## 1. ER Diagrams & Joins
- ER diagram shows relationships between entities (tables).
- Joins combine rows from multiple tables based on related columns.

## 2. Simple Join (INNER JOIN)
Returns rows with matching values in both tables.
```sql
SELECT e.first_name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;
```

## 3. Table Aliases
Use short names for readability.
```sql
SELECT e.first_name, d.dept_name FROM employees e JOIN departments d ON e.dept_id=d.dept_id;
```

## 4. Multi-table Joins
Join more than two tables.
```sql
SELECT e.first_name, d.dept_name, p.project_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN projects p ON e.emp_id = p.emp_id;
```

## 5. Joins with GROUP BY
Combine joins with aggregation.
```sql
SELECT d.dept_name, COUNT(e.emp_id) AS emp_count
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;
```

## 6. Join Conditions
- **ON:** Explicit join condition.
- **USING:** When column name is same in both tables.
- **WHERE:** Can filter after join (older style).

## 7. Types of Joins
- **INNER JOIN:** only matches.
- **LEFT JOIN:** all rows from left + matching from right (NULL if no match).
- **RIGHT JOIN:** all rows from right + matching from left.
- **FULL OUTER JOIN:** all rows from both (NULL where no match).
- **CROSS JOIN:** Cartesian product.

## 8. Natural Join
Automatically joins on columns with the same name. Should be used carefully.
```sql
SELECT * FROM employees NATURAL JOIN departments;
```

## 9. Equi vs Non-Equi Joins
- **Equi Join:** uses `=` in join condition.
- **Non-Equi Join:** uses `<`, `>`, `BETWEEN`, etc.

## 10. Multi-Join Rules
- Each join must have clear condition.
- Use table aliases.
- Beware of Cartesian product if missing join condition.

---
This concludes Session 4 theory notes.
