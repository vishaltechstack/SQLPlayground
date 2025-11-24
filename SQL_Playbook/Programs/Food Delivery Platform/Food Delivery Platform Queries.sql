-- Q-1) List top 10 customers placed the highest number of orders?
select top 10 c.customer_id, c.name, c.phone, c.city, c.signup_date, count(o.order_id) as total_order  from Customers c
join Orders o on o.customer_id = c.customer_id
group by c.customer_id, c.name, c.phone, c.city, c.signup_date
order by total_order desc


-- Q-2) Which restaurants have the highest order count?
select r.restaurant_id, r.name, r.city, r.rating, count(o.order_id) as total_order from Restaurants r
join Orders o on o.restaurant_id = r.restaurant_id
group by r.restaurant_id, r.name, r.city, r.rating
order by total_order desc


-- Q-3) Show restaurants that never received orders.


-- Q-4) Which cuisine generates the most revenue?
select r.cuisine, sum(o.total_amount) as revenue from Restaurants r
join Orders o on o.restaurant_id = r.restaurant_id
group by r.cuisine
order by revenue desc


-- Q-5) List top 3 restaurants by average customer rating in each city.


-- Q-6) Count active vs inactive restaurants per city.

-- Q-7) List the most ordered dish for each restaurant.

-- Q-8) Which food category generates the most sales?

-- Q-9) Which menu items were ordered more than 1,000 times in total?

-- Q-10) Are there restaurants with menu items priced above the city average price?

-- Q-11) Which city generates the highest order revenue?

-- Q-12) Top customers by total spending.

-- Q-13) Orders that took more than 60 minutes to deliver.

-- Q-14) Identify canceled orders by restaurant and count.

-- Q-15) Day of week with highest orders.

-- Q-16) Average cart value per city.

-- Q-17) Which delivery partner delivered the most orders?

-- Q-18) Average delivery time by partner.

-- Q-19) Identify partners with delivery success rate below 90%.

-- Q-20) Which city has the fastest average delivery time?

-- Q-21) Find orders assigned more than 15 minutes after order time.

-- Q-22) Top customer-restaurant recurring pairs.

-- Q-23) Restaurant average delivery time vs average city delivery time.

-- Q-24) Average prep + delivery time per cuisine.

-- Q-25) Top dish + city combination by order count.

-- Q-26) Compare delivery times for bike vs cycle vs car.

-- Q-27) Find orders where delivery time was more than 30% longer than average for that restaurant.

-- Q-28) Identify restaurants whose revenue dropped month-over-month.

-- Q-29) Flag partners who frequently deliver late-night orders (after midnight).

-- Q-30) Do customers who order more frequently spend more per order?

-- Q-31) Check if higher-rated restaurants earn more revenue.

-- Q-32) List the cities with the most customer sign-ups.

-- Q-33) How many customers haven’t placed any orders?

-- Q-34) Find customers who placed orders during late-night hours (after 11 PM).

-- Q-35) Monthly revenue trend.