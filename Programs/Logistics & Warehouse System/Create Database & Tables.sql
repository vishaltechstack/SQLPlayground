CREATE DATABASE LogisticsWarehouseSystem

CREATE TABLE Warehouses (
    warehouse_id INT PRIMARY KEY,
    warehouse_name VARCHAR(100),
    location VARCHAR(150),
    capacity INT
)

CREATE TABLE Items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    item_category VARCHAR(100),
    weight DECIMAL(10,2)
)

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    contact_person VARCHAR(100),
    contact_phone VARCHAR(20)
)

CREATE TABLE Shipments (
    shipment_id INT PRIMARY KEY,
    supplier_id INT,
    origin_warehouse_id INT,
    destination_warehouse_id INT,
    shipment_date DATE,
    expected_delivery_date DATE,
    shipping_cost DECIMAL(12,2),

    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id),
    FOREIGN KEY (origin_warehouse_id) REFERENCES Warehouses(warehouse_id),
    FOREIGN KEY (destination_warehouse_id) REFERENCES Warehouses(warehouse_id)
)

CREATE TABLE ShipmentItems (
    shipment_item_id INT PRIMARY KEY,
    shipment_id INT,
    item_id INT,
    quantity INT,

    FOREIGN KEY (shipment_id) REFERENCES Shipments(shipment_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
)

CREATE TABLE Routes (
    route_id INT PRIMARY KEY,
    start_location VARCHAR(150),
    end_location VARCHAR(150),
    distance_km DECIMAL(10,2),
    avg_travel_time_hours DECIMAL(10,2)
)

CREATE TABLE ShipmentRoutes (
    shipment_route_id INT PRIMARY KEY,
    shipment_id INT,
    route_id INT,

    FOREIGN KEY (shipment_id) REFERENCES Shipments(shipment_id),
    FOREIGN KEY (route_id) REFERENCES Routes(route_id)
)

CREATE TABLE TrackingStatus (
    tracking_id INT PRIMARY KEY,
    shipment_id INT,
    status VARCHAR(100),
    status_time DATETIME,
    location VARCHAR(150),
    remarks VARCHAR(255),

    FOREIGN KEY (shipment_id) REFERENCES Shipments(shipment_id)
)

CREATE TABLE DamagedShipments (
    damage_id INT PRIMARY KEY,
    shipment_id INT,
    item_id INT,
    damage_description VARCHAR(255),
    reported_date DATE,

    FOREIGN KEY (shipment_id) REFERENCES Shipments(shipment_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
)