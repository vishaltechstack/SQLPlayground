/*
The WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.
*/

SELECT column1, column2, ...
FROM table_name
WHERE condition;


-- For Example
SELECT * FROM Customers
WHERE CustomerID=101;



/*
Operators in The WHERE Clause:-
The following operators can be used in the WHERE clause


1. Comparison Operators
Operator	          Description	
=	                  Equal	
>	                  Greater than	
<	                  Less than	
>=	                  Greater than or equal	
<=	                  Less than or equal	
<>	                  Not equal. Note: In some versions of SQL this operator may be written as !=	

*/
SELECT * FROM Employees WHERE Age >= 30;


/*
2. Logical Operators
Operator	          Description	
AND                   Returns rows if both conditions are true
OR                    Returns rows if at least one condition is true
NOT                   Negates a condition

*/
SELECT * FROM Employees WHERE Age > 25 AND Department = 'Sales';


/*
3. Range Operator
Operator	          Description
BETWEEN               Checks if a value is within a range (inclusive)
*/
SELECT * FROM Orders WHERE OrderDate BETWEEN '2024-01-01' AND '2024-12-31';


/*
4. Set Operator
Operator	          Description
IN                    Matches any value in a list
*/
SELECT * FROM Products WHERE CategoryID IN (1, 3, 5);


/*
5. Pattern Matching
Operator	          Description
LIKE                  Matches a pattern (with wildcards % for multiple characters, _ for single character)
*/
SELECT * FROM Customers WHERE Name LIKE 'A%'; -- starts with A


/*
6. NULL Checking
Operator	                  Description
IS NULL / IS NOT NULL         Tests for null values
*/
SELECT * FROM Employees WHERE ManagerID IS NULL;
