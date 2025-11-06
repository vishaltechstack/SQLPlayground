/*
Create a Database:
A database is a container for tables, views, and other database objects. Use the CREATE DATABASE statement to create a new database.
*/

-- Syntax
CREATE DATABASE database_name;

-- Example
CREATE DATABASE CompanyDB;

/*
Permissions: Ensure you have the necessary permissions (e.g., sysadmin or dbcreator role) to create a database.
Default Settings: By default, SQL Server creates the database with default settings for file locations, size, and growth. You can customize these using additional options:
*/

-- Syntax
CREATE DATABASE CompanyDB
ON
( NAME = CompanyDB_data,
  FILENAME = 'File Path',
  SIZE = 10MB,
  MAXSIZE = 100MB,
  FILEGROWTH = 5MB )
LOG ON
( NAME = CompanyDB_log,
  FILENAME = 'File Path',
  SIZE = 5MB,
  MAXSIZE = 50MB,
  FILEGROWTH = 5MB );


/*
Create a Table:
A table stores data in rows and columns. Use the CREATE TABLE statement to define a table with its columns, data types, and constraints.
*/

-- Syntax
CREATE TABLE table_name (
    column1 datatype [constraints],
    column2 datatype [constraints],
    ...
    [table_constraints]
);

-- Example
USE CompanyDB;
GO

CREATE TABLE Employees (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL,
    Department NVARCHAR(30),
    Salary DECIMAL(10,2) DEFAULT 0.00
);


/*
INSERT INTO Statement: An SQL INSERT INTO statement is used to add new rows of data to a table in a database.
*/

-- Syntax
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

-- Example
/*
1. Insert a single row with specific columns:
Suppose you have a table employees with columns id, name, department, and salary.
*/
INSERT INTO employees (name, department, salary)
VALUES ('John Doe', 'HR', 50000);


/*
2. Insert a single row with all columns:
If you’re providing values for all columns in the order they’re defined in the table, you can omit the column names:
*/
INSERT INTO employees
VALUES (1, 'Jane Smith', 'IT', 60000);


/*
3. Insert multiple rows:
You can insert multiple rows in a single statement by specifying multiple sets of values:
*/
INSERT INTO employees (name, department, salary)
VALUES ('Alice Brown', 'Marketing', 55000),
       ('Bob Johnson', 'Sales', 52000);


/*
4. Insert data from another table:
You can copy data from one table to another using a SELECT statement:
*/
INSERT INTO employees_archive (id, name, department, salary)
SELECT id, name, department, salary
FROM employees
WHERE department = 'HR';