CREATE DATABASE RetailInventoryControl

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    description VARCHAR(255)
)

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(150) NOT NULL,
    contact_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
)

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    category_id INT,
    supplier_id INT,
    unit_price DECIMAL(10,2),
    reorder_level INT,
    discontinued BIT DEFAULT 0,

    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
)

CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT NOT NULL,
    quantity_in_stock INT NOT NULL,
    warehouse_location VARCHAR(100),

    FOREIGN KEY (product_id) REFERENCES Products(product_id)
)

CREATE TABLE PurchaseOrders (
    po_id INT PRIMARY KEY,
    product_id INT NOT NULL,
    supplier_id INT NOT NULL,
    order_date DATE,
    delivery_date DATE,
    quantity_ordered INT,
    purchase_price DECIMAL(10,2),

    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
)

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT NOT NULL,
    sale_date DATE,
    quantity_sold INT,
    selling_price DECIMAL(10,2),

    FOREIGN KEY (product_id) REFERENCES Products(product_id)
)