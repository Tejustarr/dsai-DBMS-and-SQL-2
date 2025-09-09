# Session 2: SELECT with Predicates, Functions, and Sorting

## 1. SELECT with Predicates
Predicates are conditions in SQL that filter rows.

### Comparison Operators
- `=` equal
- `<>` or `!=` not equal
- `<` less than
- `>` greater than
- `<=` less or equal
- `>=` greater or equal

**Example:**
```sql
SELECT * FROM employees WHERE salary > 60000;
```

### BETWEEN
Selects values within a range (inclusive).
```sql
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 80000;
```

### IN
Checks if a value matches any in a list.
```sql
SELECT * FROM employees WHERE dept_id IN (1, 3);
```

### LIKE and Wildcards
- `%` matches 0 or more characters
- `_` matches exactly one character
```sql
SELECT * FROM employees WHERE first_name LIKE 'A%';
SELECT * FROM employees WHERE last_name LIKE '__a%';
```

### NULL Checks
```sql
SELECT * FROM employees WHERE email IS NULL;
SELECT * FROM employees WHERE email IS NOT NULL;
```

### LIMIT and OFFSET
- Restricts number of rows returned.
```sql
SELECT * FROM employees ORDER BY salary DESC LIMIT 5 OFFSET 10;
```

## 2. Set Operators
Combine results of multiple SELECT statements. Requirements: same number and type of columns.

- **UNION**: combines and removes duplicates.
- **UNION ALL**: combines and keeps duplicates.
- **INTERSECT**: returns common rows.
- **EXCEPT (Postgres)/MINUS (Oracle)**: returns rows from first not in second.

Example:
```sql
SELECT dept_id FROM employees
UNION
SELECT dept_id FROM departments;
```

## 3. Functions

### Numeric Functions
- `ROUND(number, decimals)`
- `TRUNC(number, decimals)` (truncate without rounding)
- `FLOOR(number)`
- `CEIL(number)`
- `ABS(number)` absolute value
- `MOD(x,y)` remainder
- `POWER(x,y)`

### String Functions
- `UPPER(string)` / `LOWER(string)`
- `LENGTH(string)` (or `LEN()` in SQL Server)
- `SUBSTRING(string FROM start FOR length)` (Postgres/ANSI)
- `CONCAT(str1, str2)`

### Date Functions
- `CURRENT_DATE`
- `EXTRACT(YEAR FROM date)` (Postgres)
- `YEAR(date)` (MySQL/SQL Server)
- `julianday()` in SQLite for date differences

### Null Handling & Type Conversion
- `COALESCE(expr, default)` → replace NULL with default
- `CAST(expr AS type)` → convert types

## 4. Sorting Results
- `ORDER BY col1 ASC, col2 DESC`
- Default is ASC (ascending).
- You can order by column position too (not recommended).

## 5. Operator Precedence in WHERE
Order: 
1. Parentheses `()`
2. NOT
3. AND
4. OR

Example:
```sql
SELECT * FROM employees
WHERE (dept_id = 1 OR dept_id = 2) AND salary > 50000;
```

---
This concludes the Session 2 theory notes.
