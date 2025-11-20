CREATE DATABASE LoanManagement_CreditAnalysis

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    date_of_birth DATE,
    address VARCHAR(255)
)

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_type VARCHAR(50),
    principal_amount DECIMAL(12,2),
    interest_rate DECIMAL(5,2),
    issue_date DATE,
    maturity_date DATE,
    status VARCHAR(50),       -- Active, Closed, Defaulted
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)

CREATE TABLE EMI_Payments (
    payment_id INT PRIMARY KEY,
    loan_id INT,
    payment_date DATE,
    amount_paid DECIMAL(12,2),
    due_date DATE,
    is_late BIT,
    FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
)

CREATE TABLE Loan_Transactions (
    transaction_id INT PRIMARY KEY,
    loan_id INT,
    transaction_date DATE,
    transaction_type VARCHAR(50),   -- Disbursement, EMI, Penalty, Refund
    amount DECIMAL(12,2),
    description VARCHAR(255),
    FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
)

CREATE TABLE Credit_Score_History (
    record_id INT PRIMARY KEY,
    customer_id INT,
    score INT,
    score_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)