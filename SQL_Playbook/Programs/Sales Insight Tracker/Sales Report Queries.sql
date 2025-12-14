-- Q-1) List all orders placed in January.
select * from Orders
where order_date between '2024-01-01' and '2024-01-31'


-- Q-2) Find total number of customers.#
select count(customer_id) from Customers


-- Q-3) Count how many products exist in each category.
select category, count(*) as product_count from Products
group by category


-- Q-4) Show top 10 most ordered products.
select top 10 p.product_id, p.product_name, sum(oi.quantity) as total_quantity_sold from Order_items oi
join Products p
on oi.product_id = p.product_id
group by p.product_id, p.product_name
order by total_quantity_sold desc


-- Q-5) Find customers who did not place any order.
select c.customer_id, c.customer_name from Customers c
join Orders o on o.customer_id = c.customer_id
where c. customer_id not in (select o.customer_id from Orders)


-- Q-6) Show total sales by month.
select datename(month, order_date) as month_name, sum(total_amount) as total_sales from Orders
group by datename(month, order_date)
order by total_sales desc


-- Q-7) Calculate total revenue from each product category.
select p.category, sum(oi.quantity * oi.unit_price) as total_revenue from Order_items oi
join Products p on p.product_id = oi.product_id
group by p.category
order by total_revenue desc


-- Q-8) Find products whose unit price is above the average unit price.
select * from Products
where unit_price > (select avg(unit_price) from Products)


-- Q-9) Count orders per payment method.
select payment_method, count(order_id) as order_count from Orders
group by payment_method
order by order_count desc


-- Q-10) List top 5 stores by total sales.
select * from stores
select * from Customers
select * from Orders



-- Q-11) Get total quantity sold per product category.

-- Q-12) Find the first order placed by each customer.

-- Q-13) List all orders delivered more than 5 days after shipping.

-- Q-14) Find customers ordering from more than one store.

-- Q-15) Identify the region with highest revenue.

-- Q-16) Find repeat customers (placed more than 3 orders).

-- Q-17) Find the best selling product per region.

-- Q-18) Determine the most profitable month each year.

-- Q-19) List customers spending more than ₹50,000 total.

-- Q-20) Identify products never sold.

-- Q-21) Calculate average delivery time by city.

-- Q-22) Find orders where delivered_date is earlier than shipped_date.

-- Q-23) Calculate percentage of returned shipments by region.

-- Q-24) Monthly revenue growth %.

-- Q-25) Category contributing highest % to total revenue.

-- Q-26) Identify customers who buy only one category.

-- Q-27) Find products whose sales drop more than 30% month-over-month.

-- Q-28) Detect regions where delivery delays increase month-over-month.

-- Q-29) Find the top 3 customers from each city.

-- Q-30) Identify most common order size (quantity pattern).