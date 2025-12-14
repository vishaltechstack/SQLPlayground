-- Q-1) List customers who joined after jan 2024.
select * from Customers
where created_at > '2024-01-31'


-- Q-2) Find customers without a phone number prefix "+91".
select * from Customers

-- Q-3) Count customers by city.
select city, count(*) as total_customer from Customers
group by city
order by total_customer desc


-- Q-4) Identify customers living in the same city and state.


-- Q-5) Find duplicate addresses used by more than one customer.


-- Q-6) List towers located in the same city as customer “X”.


-- Q-7) Find towers located outside the customer’s state.


-- Q-8) Count towers per city.
select city, count(tower_name) as total_towers from Cell_Towers
group by city
order by total_towers desc


-- Q-9) Identify towers with coordinates missing or invalid.


-- Q-10) Find the northernmost and southernmost tower.


-- Q-11) List all calls made by a specific customer.


-- Q-12) Find the longest call for each caller.


-- Q-13) Count total calls made per day.
select datename(weekday, call_start) as day, count(call_id) as total_calls from Call_Records
group by datename(weekday, call_start)
order by total_calls desc


-- Q-14) Identify missed or failed calls (duration = 0).


-- Q-15) Calculate total call duration per tower.
select ct.tower_id, ct.tower_name, sum(cr.call_duration) as total_call_duration from Cell_Towers ct
join Call_Records cr on cr.tower_id = ct.tower_id
group by ct.tower_id, ct.tower_name
order by total_call_duration desc


-- Q-16) Find all international calls (call_type = 'International').


-- Q-17) Identify customers who received more calls than they made.


-- Q-18) Count total calls where caller and receiver live in the same city.


-- Q-19) Find average call duration for each call type.


-- Q-20) List calls that lasted more than 10 minutes.


-- Q-21) Calculate total revenue per billing cycle.


-- Q-22) Find the highest and lowest billed call.


-- Q-23) List calls where charged cost does not match duration * cost_per_min.


-- Q-24) Find customers with highest overall call charges.


-- Q-25) Identify months with the highest billed calls.


-- Q-26) List customers who sent more SMS than they received.


-- Q-27) Count SMS per tower.


-- Q-28) Identify spam SMS (sms_type = 'Promotional').


-- Q-29) Find SMS sent after midnight.


-- Q-30) List SMS sent by customers living in one city to customers in another city.


-- Q-31) List caller name, receiver name, call duration, and tower name.


-- Q-32) Find customers who made calls using more than 3 different towers.


-- Q-33) Get total billed amount for each customer by joining Call_Records and Call_Charges.


-- Q-34) Find customers who used towers not located in their own city.


-- Q-35) List the most frequent tower used by each customer.


-- Q-36) Find customers who sent SMS via towers they never used for calls.


-- Q-37) List all calls where caller and receiver used towers in different states.


-- Q-38) Identify high-value customers (billing > 5,000 in a cycle).


-- Q-39) Count combined communication events (calls + SMS) per customer.


-- Q-40) Create a report showing: customer name, total calls, total SMS, total cost.


-- Q-41) Rank customers by total call duration.


-- Q-42) Find the top 3 most active towers (calls + SMS).


-- Q-43) Show the month-over-month growth in call volume.


-- Q-44) Calculate the percentage of calls made by each customer out of total.


-- Q-45) Identify customers with unusual call activity (outliers).


-- Q-46) Running total of charges per customer sorted by billing cycle.


-- Q-47) Find the tower used for the maximum total call duration.


-- Q-48) Top 5 customers with highest SMS frequency using dense_rank().


-- Q-49) Identify repeated SMS patterns for fraud analysis.


-- Q-50) Find the busiest hour of the day based on call_start.