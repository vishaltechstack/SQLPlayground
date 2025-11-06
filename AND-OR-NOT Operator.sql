/* AND, OR, NOT Operator

AND - The AND operator is used to filter records based on more than one condition, like if you want to return all customers from Spain that starts with the letter 'G'.
*/

-- Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

-- Example
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

/*
OR - The OR operator is used to filter records based on more than one condition, like if you want to return all customers from Germany but also those from Spain.
*/

-- Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

-- Example
SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';


/*
NOT - The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.
*/

-- Syntax
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

-- Example
SELECT * FROM Customers
WHERE NOT Country = 'Spain';


/*
NOT LIKE:
Select customers that does not start with the letter 'A':
*/
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';


/*
NOT BETWEEN:
Select customers with a customerID not between 10 and 60:
*/
SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;


/*
NOT IN:
Select customers that are not from Paris or London:
*/
SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');


/*
NOT Greater Than:
Select customers with a CustomerId not greater than 50:
*/
SELECT * FROM Customers
WHERE NOT CustomerID > 50;


/*
NOT Less Than:
Select customers with a CustomerID not less than 50:
*/
SELECT * FROM Customers
WHERE NOT CustomerId < 50;