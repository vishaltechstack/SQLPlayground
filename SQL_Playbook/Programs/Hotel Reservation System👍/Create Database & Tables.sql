-- Create Database
create database HotelReservationSystem

-- Create Table
create table Guests (
	guest_id int primary key,
	first_name varchar(50),
	last_name varchar(50),
	phone varchar(50),
	email varchar(50),
	country varchar(50)
)

create table Rooms (
	room_id int primary key,
	room_number varchar(50),
	room_type varchar(50),
	capacity int,
	price_per_night decimal(20,2),
	status varchar(50)
)

create table Reservations (
	reservation_id int primary key,
	guest_id int,
	room_id int,
	checkin_date date,
	checkout_date date,
	booking_date date,
	status varchar(50),

	foreign key (guest_id) references Guests(guest_id),
	foreign key (room_id) references Rooms(room_id)
)

create table Payments (
	payment_id int primary key,
	reservation_id int,
	amount decimal(20,2),
	payment_date date,
	method varchar(50),
	status varchar(50)

	foreign key (reservation_id) references Reservations(reservation_id)
)

create table Staff (
	staff_id int primary key,
	name varchar(50),
	role varchar(50),
	phone varchar(50),
	salary decimal(20,2)
)