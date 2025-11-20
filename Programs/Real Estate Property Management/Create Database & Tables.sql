create database RealEstatePropertyManagement

create table Cities (
	city_id int primary key,
	city_name varchar(50),
	state_name varchar(50),
	regin varchar(50)
)

create table Properties (
	property_id int primary key,
	property_name varchar(50),
	property_type varchar(50),
	address varchar(100),
	city varchar(50),
	state varchar(50),
	rent_amount int,
	maintenance_cost int,
	status varchar(50)
)

create table Tenants (
	tenant_id int primary key,
	full_name varchar(50),
	phone varchar(50),
	email varchar(50),
	occupation varchar(50),
	move_in_date date,
	move_out_date date
)

create table Leases (
	lease_id int primary key,
	property_id int,
	tenant_id int,
	lease_start date,
	lease_end date,
	monthly_rent int,
	security_deposit int,
	lease_status varchar(50),

	foreign key (property_id) references Properties(property_id),
	foreign key (tenant_id) references Tenants(tenant_id)
)

create table PropertyVisits (
	visit_id int primary key,
	property_id int,
	visitor_name varchar(100),
	visit_date date,
	feedback varchar(500),
	interest_level varchar(50),

	foreign key (property_id) references Properties(property_id)
)

create table Payments (
	payment_id int primary key,
	lease_id int,
	payment_date date,
	amount_paid date,
	payment_status varchar(50),

	foreign key (lease_id) references Leases(lease_id)
)

create table MaintenanceRequests (
	request_id int primary key,
	property_id int,
	request_date date,
	issue_description varchar(500),
	assigned_to varchar(50),
	cost int,
	status varchar(50),

	foreign key (property_id) references Properties(property_id)
)