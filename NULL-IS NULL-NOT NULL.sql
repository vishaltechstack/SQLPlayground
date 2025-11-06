/*
NULL, IS NULL, NOT NULL:
In SQL NULL, IS NULL, and IS NOT NULL are important concepts related to handling missing or unknown data in a database. Below, I’ll define each term and explain their usage with examples, keeping it concise yet comprehensive.
*/

/*
1. NULL:
Definition: NULL represents a missing, unknown, or undefined value in a database column. It is not the same as zero, an empty string (''), or any other specific value—it indicates the absence of a value.

Key Points:
NULL is not equal to anything, including another NULL (e.g., NULL = NULL evaluates to UNKNOWN, not TRUE).
Columns that allow NULL can store NULL if no value is provided or explicitly set.
Columns with a NOT NULL constraint require a value.
*/
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) -- Allows NULL by default
);

INSERT INTO Employees (ID, Name, Email)
VALUES (1, 'John Doe', NULL); -- Email is NULL


/*
2. IS NULL:
Definition: IS NULL is a condition used in SQL queries to check if a column or expression contains a NULL value.

Usage: Used in WHERE clauses or conditions to filter rows where a specific column has NULL.

Key Points:
You cannot use = NULL to check for NULL because NULL comparisons with = yield UNKNOWN.
Use IS NULL to explicitly test for NULL values.
*/
SELECT * FROM Employees
WHERE Email IS NULL;


/*
3. IS NOT NULL:
Definition: IS NOT NULL is a condition used to check if a column or expression does not contain a NULL value (i.e., it has an actual value).

Usage: Used in WHERE clauses to filter rows where a specific column has a non-NULL value.

Key Points:

Opposite of IS NULL.
Useful for ensuring a column contains meaningful data.
*/
INSERT INTO Employees (ID, Name, Email)
VALUES (2, 'Jane Smith', 'jane@example.com');

SELECT * FROM Employees
WHERE Email IS NOT NULL;


-- Key Notes
/*
NULL in Calculations: Arithmetic operations involving NULL (e.g., 5 + NULL) result in NULL. Use functions like COALESCE or ISNULL to handle NULL values:
*/
SELECT Name, ISNULL(Email, 'No Email') AS Email
FROM Employees;

/*
Constraints:
When creating a table, specify NOT NULL to prevent NULL values in a column:
*/
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL -- Cannot be NULL
);

-- Attempting to insert NULL into a NOT NULL column will cause an error:
INSERT INTO Employees (ID, Name) VALUES (1, NULL); -- Error

-- Performance: Using IS NULL or IS NOT NULL in queries can affect performance, especially on large tables. Indexes may not be used efficiently for IS NULL unless specifically designed