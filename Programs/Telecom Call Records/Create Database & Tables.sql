CREATE DATABASE TelecomCallRecords

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    phone_number VARCHAR(20) UNIQUE,
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    created_at DATE
);

CREATE TABLE Call_Records (
    call_id INT PRIMARY KEY,
    caller_id INT,
    receiver_id INT,
    call_start DATETIME,
    call_end DATETIME,
    call_type VARCHAR(20),
    call_duration INT,
    tower_id INT,
    FOREIGN KEY (caller_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (receiver_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Cell_Towers (
    tower_id INT PRIMARY KEY,
    tower_name VARCHAR(100),
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6),
    city VARCHAR(100),
    state VARCHAR(100)
);

CREATE TABLE Call_Charges (
    charge_id INT PRIMARY KEY,
    call_id INT,
    cost_per_min DECIMAL(10, 2),
    total_cost DECIMAL(10, 2),
    billing_cycle DATE,
    FOREIGN KEY (call_id) REFERENCES Call_Records(call_id)
);

CREATE TABLE SMS_Records (
    sms_id INT PRIMARY KEY,
    sender_id INT,
    receiver_id INT,
    sent_at DATETIME,
    sms_type VARCHAR(50),
    tower_id INT,
    FOREIGN KEY (sender_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (receiver_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (tower_id) REFERENCES Cell_Towers(tower_id)
);