/*
Order BY:
The ORDER BY clause in SQL is used to sort the result set of a query by one or more columns.
*/

-- Syntax
SELECT column1, column2, ...
FROM table_name
ORDER BY column_name [ASC | DESC];
/*
ASC ? Ascending order (default)
DESC ? Descending order
*/


-- 1. Sort in ascending order (default):
SELECT * FROM Employees
ORDER BY Age;

-- 2. Sort in descending order:
SELECT * FROM Employees
ORDER BY Salary DESC;

-- 3. Sort by multiple columns:
SELECT * FROM Employees
ORDER BY Department ASC, Salary DESC;

