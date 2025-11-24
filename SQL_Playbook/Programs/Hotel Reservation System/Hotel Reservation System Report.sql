-- Q-1) List all guests from India.
select * from Guests
where country = 'India'


-- Q-2) Show all rooms that are available.
select * from Rooms
where status = 'Available'


-- Q-3) Count how many Deluxe rooms the hotel has.
select count(*) from Rooms
where room_type = 'Deluxe'


-- Q-4) Show the details of the last 10 reservations.
select top 10 * from Reservations
order by booking_date desc


-- Q-5) Retrieve all reservations made by a specific guest.


-- Q-6) Find rooms that have never been booked.
select * from Rooms


-- Q-7) Calculate total revenue collected from bookings.
select * from Payments


-- Q-8) List guests who have made more than 3 reservations.
select g.guest_id, g.first_name, g.last_name, count(r.reservation_id) as total_reservation from Guests g
join Reservations r on r.guest_id = g.guest_id
group by g.guest_id, g.first_name, g.last_name
having count(g.guest_id) > 3
order by total_reservation desc


-- Q-9) Show rooms booked in the month of October.
select r.room_id, r.room_number, r.room_type, r.capacity, r.price_per_night, rs.booking_date, rs.checkin_date, rs.checkout_date, rs.status from Rooms r
join Reservations rs on rs.room_id = r.room_id
group by r.room_id, r.room_number, r.room_type, r.capacity, r.price_per_night, rs.booking_date, rs.checkin_date, rs.checkout_date, rs.status
having MONTH(rs.booking_date) = 10


-- Q-10) Show average price per room type.
select room_type, avg(price_per_night) as average_room_price from Rooms
group by room_type
order by average_room_price desc


-- Q-11) Find peak booking month based on reservation count.


-- Q-12) Calculate total nights spent per guest.


-- Q-13) Identify guests with unpaid or pending payments.


-- Q-14) Show the most popular room type based on bookings.
select r.room_type, count(rv.booking_date) as total_bookings from Rooms r
join Reservations rv on rv.room_id = r.room_id
group by r.room_type
order by total_bookings desc


-- Q-15) Determine which staff role has the highest total salary expense.


-- Q-16) Find overlapping reservations for the same room.


-- Q-17) Get longest stay (in days) among completed bookings.


-- Q-18) Calculate cancellation rate per month.
select * from Reservations


-- Q-19) Find top 3 guests who generated most revenue.
select top 3 r.guest_id, sum(datediff(day, r.checkin_date, r.checkout_date) * rm.price_per_night) as total_revenue from Reservations r
join Rooms rm on r.room_id = rm.room_id
group by r.guest_id
order by total_revenue desc;


-- Q-20) List reservations where check-out is before check-in (data errors).