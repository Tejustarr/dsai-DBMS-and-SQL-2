# Session 7 - Exercises

## Part A: Transactions
1. Start a transaction and update salaries of Sales department by 5%.
2. Use SAVEPOINT to mark a point, delete one employee, then rollback to savepoint.
3. Demonstrate COMMIT vs ROLLBACK.

## Part B: Isolation & Locks
4. Set isolation level to READ COMMITTED.
5. Demonstrate shared lock on employees table.

## Part C: Views
6. Create a simple view listing employee names and emails.
7. Create a joined view showing employee names with department names.
8. Create a horizontal view showing employees in HR.
9. Create a vertical view showing only first_name and salary.
10. Create a group view showing avg salary by department.
11. Add CHECK OPTION to a view restricting salary > 60000.
12. Drop a view you created.
