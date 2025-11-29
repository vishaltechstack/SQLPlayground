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
select r.reservation_id, g.guest_id, g.first_name, g.last_name, g.phone, g.email, g.country, r.room_id, r.checkin_date, r.booking_date, r.status, count(r.guest_id) as number_of_reservation from Reservations r
join Guests g on r.guest_id = g.guest_id
group by r.reservation_id, g.guest_id, g.first_name, g.last_name, g.phone, g.email, g.country, r.room_id, r.checkin_date, r.booking_date, r.status
having count(r.guest_id) = 3
order by number_of_reservation


-- Q-6) Find rooms that have never been booked.
select r.room_id, r.room_type from Rooms r
left join Reservations res on r.room_id = res.room_id
where res.room_id is null


-- Q-7) Calculate total revenue collected from bookings.
select sum(p.amount) as total_revenue from Payments p
join Reservations res on res.reservation_id = p.reservation_id


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
select top 1 datename(month, booking_date) as month, count(*) as total_reservation from Reservations
group by datename(month, booking_date)
order by total_reservation desc


-- Q-12) Calculate total nights spent per guest.
select guest_id, sum(datediff(day, checkin_date, checkout_date)) as total_nights from Reservations
where status = 'Completed'
group by guest_id
order by total_nights desc


-- Q-13) Identify guests with unpaid or pending payments.
select * from Payments
select * from Reservations


-- Q-14) Show the most popular room type based on bookings.
select r.room_type, count(rv.booking_date) as total_bookings from Rooms r
join Reservations rv on rv.room_id = r.room_id
group by r.room_type
order by total_bookings desc


-- Q-15) Determine which staff role has the highest total salary expense.
select top 1 role, sum(salary) as total_salary_expense from Staff
group by role
order by total_salary_expense desc


-- Q-16) Find overlapping reservations for the same room.
select 
    r1.reservation_id as res1,
    r2.reservation_id as res2,
    r1.room_id,
    r1.checkin_date as res1_checkin,
    r1.checkout_date as res1_checkout,
    r2.checkin_date as res2_checkin,
    r2.checkout_date as res2_checkout
from Reservations r1
join Reservations r2 
    on r1.room_id = r2.room_id
    and r1.reservation_id < r2.reservation_id
    and r1.checkin_date < r2.checkout_date
    and r1.checkout_date > r2.checkin_date


-- Q-17) Get longest stay (in days) among completed bookings.
select reservation_id, guest_id, room_id, checkin_date, checkout_date, max(datediff(day, checkin_date, checkout_date)) as longest_stay from Reservations
where status = 'Completed'
group by reservation_id, guest_id, room_id, checkin_date, checkout_date
order by longest_stay desc


-- Q-18) Calculate cancellation rate per month.
select 
    format(booking_date, 'yyyy-MM') as month,
    count(*) as total_bookings,
    sum(case when status = 'Cancelled' then 1 else 0 end) as cancelled_bookings,
    round(
        sum(case when status = 'Cancelled' then 1 else 0 end) * 100.0 / count(*),
        2
    ) as cancellation_rate
from Reservations
group by format(booking_date, 'yyyy-MM')
order by month


-- Q-19) Find top 3 guests who generated most revenue.
select top 3 r.guest_id, sum(datediff(day, r.checkin_date, r.checkout_date) * rm.price_per_night) as total_revenue from Reservations r
join Rooms rm on r.room_id = rm.room_id
group by r.guest_id
order by total_revenue desc


-- Q-20) List reservations where check-out is before check-in (data errors).
select * from Reservations
where checkout_date < checkin_date