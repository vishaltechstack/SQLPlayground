-- Q-1) List all airports in India along with their IATA codes.
select airport_name, country, iata_code from Airports
where country = 'India'
select * from Airlines
select * from Flights


-- Q-2) Show all flights departing from Delhi (DEL) on 20th December 2025.


-- Q-3) Display the full names of all passengers whose first name starts with 'A'.


-- Q-4) Find the total number of passengers in the database.
select count(*) as TotalPassengers from Passengers


-- Q-5) List all Airbus aircraft models and their seating capacity.


-- Q-6) Show all cancelled bookings with passenger name and flight details.


-- Q-7) Find all flights operated by IndiGo (airline_id = 2002).


-- Q-8) List all crew members who are Pilots.
select * from CrewMembers
where role = 'Pilot'


-- Q-9) Show the most expensive and cheapest base fare flights.


-- Q-10) Display all payments made using UPI.
select * from Payments
where payment_method = 'UPI'


-- Q-11) Find passengers who have booked First Class at least once.


-- Q-12) List all flights that are currently Delayed.
select f.*, fs.status, fs.delay_minutes from Flights f
join FlightStatus fs on fs.flight_id = f.flight_id
where fs.status = 'Delayed'


-- Q-13) Show booking details (passenger name, flight, seat, class) for flight 4001.


-- Q-14) Count how many bookings each passenger has made.


-- Q-15) Find all flights arriving at Mumbai (BOM).


-- Q-16) Show passenger name, flight number, departure & arrival airports, and departure time for all Confirmed bookings.


-- Q-17) Find the top 5 most frequently booked flights.


-- Q-18) Calculate total revenue collected from all Business class bookings.


-- Q-19) List passengers who have made payments greater than ₹1,00,000.


-- Q-20) Show flights where more than 8 passengers have booked.


-- Q-21) Find crew members who are assigned to more than 3 flights.


-- Q-22) Display the current status of all flights departing today (2025-11-18).


-- Q-23) Find all passengers who booked and paid on the same day.


-- Q-24) Show the average base fare for domestic vs international flights.


-- Q-25) List all cancelled flights along with the number of affected bookings.


-- Q-26) Find passengers who have never flown Business or First class.


-- Q-27) Show the pilot and co-pilot names for flight 4006 (DEL→LHR).


-- Q-28) Calculate total revenue generated on November 2025
select payment_date, sum(amount) as TotalRevenue from Payments
where payment_date > '2025-11-01' and payment_date < '2025-11-30'
group by payment_date
order by TotalRevenue desc


-- Q-29) Find the busiest departure airport (most departures).


-- Q-30) List all passengers who have a booking but no payment recorded (should be zero in your data — good integrity check!).


-- Q-31) Find passengers who have flown on the same flight more than once (repeat travelers).


-- Q-32) Show monthly booking trend from October to December 2025.


-- Q-33) Identify the top 10 highest-revenue-generating passengers.


-- Q-34) Find flights that have both a Pilot and Co-Pilot from the same country (join CrewMembers → Airlines).


-- Q-35) List passengers who booked within 24 hours of flight departure (last-minute bookings).


-- Q-36) Show flights where the actual payment amount does not match expected amount (base fare × class multiplier).


-- Q-37) Find the longest delay in minutes and the corresponding flight details.


-- Q-38) Show crew utilization: how many flights each crew member is assigned to.


-- Q-39) Find passengers who have upcoming flights that are currently delayed.


-- Q-40) Generate a report: For each airline, show total bookings, revenue, and on-time performance %.


-- Q-41) Find “golden passengers”: those who spent more than ₹5,00,000 in total.


-- Q-42) Show seat occupancy percentage for flight 4001.


-- Q-43) Find pairs of passengers who are sitting next to each other (e.g., 12A and 12B).


-- Q-44) List all international passengers (based on phone country code or email domain).


-- Q-45) Show flights that have at least one First Class passenger and one Economy passenger.


-- Q-46) Write a query to find passengers who have a complete travel itinerary: DEL → DXB → LHR (multi-leg journey via connecting flights).


-- Q-47) Find the most profitable route (departure → arrival city pair) by total revenue.


-- Q-48) Detect potential no-shows: Confirmed bookings where passenger has not checked in and flight has departed.


-- Q-49) Using window functions: Rank passengers by total amount spent and show their spending percentile.


-- Q-50) Create a flight delay chain: Find flights where delay > 60 minutes and the assigned aircraft is scheduled for another flight within 2 hours (turnaround risk).