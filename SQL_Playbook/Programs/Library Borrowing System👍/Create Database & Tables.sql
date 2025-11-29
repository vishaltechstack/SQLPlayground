-- Create Database
create database LibraryBorrowingSystem;

-- Create Tables
create table books (
	book_id int primary key,
	title varchar(100),
	author varchar(50),
	genre varchar(60),
	published_year int,
	total_copies int
);

create table members (
	member_id int primary key,
	name varchar(50),
	join_date date,
	age int,
	city varchar(60),
);

create table borrow_records (
	borrow_id int primary key,
	member_id int,
	book_id int,
	borrow_date date,
	return_date date,
	due_date date,

	FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

create table fines (
	fine_id int primary key,
	borrow_id int,
	amount decimal(10,2),
	is_paid bit default 0, -- 0 = FALSE, 1 = TRUE

	foreign key (borrow_id) references borrow_records(borrow_id)
);