-- Q-1) List all products along with their category names.
select p.product_id, p.product_name, c.category_name, p.unit_price from Products p
join Categories c on c.category_id = p.category_id


-- Q-2) Show all products with their supplier names and contact persons.
select s.supplier_id, s.supplier_name, s.contact_name, count(p.product_name) as all_products from Suppliers s
join Products p on p.supplier_id = s.supplier_id
group by s.supplier_id, s.supplier_name, s.contact_name
order by all_products desc


-- Q-3) Find products whose stock quantity is below their reorder level.

-- Q-4) Display all products that are discontinued.


-- Q-5) List all suppliers located in Mumbai or Delhi.
select * from Suppliers
where address in ('Mumbai', 'Delhi')


-- Q-6) Show the total number of products in each category.
select c.category_name, count(p.product_name) as total_products from Categories c
join Products p on p.category_id = c.category_id
group by c.category_name
order by total_products desc


-- Q-7) Retrieve the details of all purchase orders placed in February 2024.
select * from PurchaseOrders
where order_date > '2024-02-01' and order_date < '2024-02-29'


-- Q-8) Find all inventory items stored in warehouse "WH-A".
select * from Inventory
where warehouse_location = 'WH-A'


-- Q-9) List products with a unit price greater than 100.
select * from Products
where unit_price > 100


-- Q-10) Show all sales that happened on 2024-03-10.
select * from Sales
where sale_date = '2024-03-10'


-- Q-11) Find the top 5 products with the highest quantity sold.
select top 5 p.product_id, p.product_name, sum(s.quantity_sold) as total_quantity_sold from Products p
join Sales s on s.product_id = p.product_id
group by p.product_id, p.product_name
order by total_quantity_sold desc


-- Q-12) Show each product with total sales revenue generated.
select p.product_id ,p.product_name, sum(s.quantity_sold * selling_price) as total_sales_revenue from Sales s
join Products p on p.product_id = s.product_id
group by p.product_id ,p.product_name
order by total_sales_revenue desc


-- Q-13) List products that have never been sold.


-- Q-14) Find suppliers whose products have been ordered more than 200 units in total.

-- Q-15) Retrieve the most frequently ordered category in purchase orders.

-- Q-16) Show product-wise profit (selling price − purchase price).

-- Q-17) List products where the stock quantity is below 50.
select p.product_id, p.product_name, p.unit_price, p.reorder_level, i.quantity_in_stock from Products p
join Inventory i on i.product_id = p.product_id
where i.quantity_in_stock < 50
group by p.product_id, p.product_name, p.unit_price, p.reorder_level, i.quantity_in_stock
order by i.quantity_in_stock desc


-- Q-18) Identify the category with the highest number of active products.

-- Q-19) Show products that were both purchased and sold in the same month.

-- Q-20) Show month-wise sales quantity for 2024.

-- Q-21) Find the highest selling product in terms of revenue.

-- Q-22) Calculate the average delivery time for each supplier.

-- Q-23) List the top 3 suppliers based on total purchase value.

-- Q-24) Identify slow-moving products (sold less than 10 units).

-- Q-25) Find products where the selling price is more than double the purchase price.

-- Q-26) Show low margin products (margin under 10%).

-- Q-27) Retrieve products that have been out of stock at any time.

-- Q-28) Find which warehouse stores the most product quantity.

-- Q-29) Identify products that belong to the same supplier but different categories.

-- Q-30) Determine reorder suggestions for all products (stock < reorder_level).

-- Q-31) Using a window function, list products ranked by total sales revenue.

-- Q-32) Show running total of quantity sold per product sorted by sale date.

-- Q-33) Retrieve the highest sale quantity per product using a window function.

-- Q-34) Find categories where the average stock quantity is below the overall category average.

-- Q-35) Calculate the month-over-month change in sales for each product.

-- Q-36) Identify suppliers whose delivery times vary the most.

-- Q-37) Show category-wise cumulative purchase quantities.

-- Q-38) Find duplicate contact phone numbers across suppliers.

-- Q-39) List the top 2 products in each category based on sales.

-- Q-40) Identify products purchased more than the last month’s sales.

-- Q-41) Suggest which products need urgent restocking across all warehouses.

-- Q-42) Find the most profitable category.

-- Q-43) Identify products whose stock-to-sales ratio is the lowest.

-- Q-44) Suggest which suppliers should be prioritized for fast delivery.

-- Q-45) Detect misleading sales patterns (high sales but low stock movement).

-- Q-46) Find products that generate the highest profit per unit.

-- Q-47) Show how much inventory value is stored in each warehouse.

-- Q-48) Identify categories that are growing in sales month over month.

-- Q-49) Which products have been purchased frequently but sold rarely?

/* 
Q-50) Prepare a report showing key retail KPIs:
		Total sales
		Total purchase cost
		Profit
		Top category
		Top supplier
*/