-- Q-1) List all cities along with their state and region.
select distinct(city_name), state_name, regin from Cities


-- Q-2) Show all properties that are currently Vacant.
select * from Properties
where status = 'Vacant'


-- Q-3) Display all tenants and their contact information.
select tenant_id, full_name, phone, email from Tenants


-- Q-4) List all leases that are Active.
select * from Leases
where lease_status = 'Active'


-- Q-5) Show all maintenance requests that are Pending.
select * from MaintenanceRequests
where status = 'Pending'


-- Q-6) Find all property visits that happened in March 2024.
select * from PropertyVisits
where visit_date >= '2024-03-01' and visit_date <= '2024-03-31'


-- Q-7) Display all payments that are Pending.
select * from Payments
where payment_status = 'Pending'


-- Q-8) Find properties in Maharashtra with rent greater than 30,000.
select * from Properties
where state = 'Maharashtra' and rent_amount > 30000


-- Q-9) List tenants who moved in after 1st June 2023.
select * from Tenants
where move_in_date > '2023-06-01'


-- Q-10) Find the total rent amount collected from all leases.
select l.lease_id, sum(p.rent_amount) as total_rent from Leases l
join Properties p on p.property_id = l.property_id
group by l.lease_id
order by total_rent desc


-- Q-11) Show the number of tenants per city.
select p.city, count(t.tenant_id) as number_of_tenants from Properties p
join Leases l on l.property_id = p.property_id
join Tenants t on t.tenant_id = l.tenant_id
group by p.city
order by number_of_tenants desc


-- Q-12) List all properties along with their tenant name if occupied.

-- Q-13) Display all maintenance requests along with the property name and assigned person.

-- Q-14) Find all leases that will expire in the next 3 months.

-- Q-15) Show all visitors who had High interest in a property.

-- Q-16) Find the top 5 properties with the highest total maintenance cost.

-- Q-17) Calculate average rent per city.

-- Q-18) List tenants who have more than one lease.

-- Q-19) Find properties with no tenants currently.

-- Q-20) Show all payments made by tenants in 2023, along with property name.

-- Q-21) List all properties that never had a maintenance request.

-- Q-22) Find tenants whose lease amount is higher than the average rent in the same city.

-- Q-23) Display properties that had more than 3 visits in the last 3 months.

-- Q-24) Count total maintenance requests assigned to each staff member.

-- Q-25) Show properties with highest number of tenants historically.

-- Q-26) List tenants along with their lease start and end dates and property name.

-- Q-27) Display property visits along with tenant names if the property is occupied.

-- Q-28) Find all tenants and the payments they have made.

-- Q-29) Show maintenance requests along with the tenant name of the property (if occupied).

-- Q-30) List properties and total rent collected from all their leases.

-- Q-31) Display tenants who paid all their rent on time.

-- Q-32) Find all properties visited by a tenant before they signed the lease.

-- Q-33) Total monthly rent collected per city.

-- Q-34) Average maintenance cost per property type.

-- Q-35) Count of occupied vs vacant properties per city.

-- Q-36) Top 3 tenants who have paid the highest security deposit.

-- Q-37) Average number of property visits per property.

-- Q-38) Total number of leases ending this year.

-- Q-39) Find the most common property type across all cities.

-- Q-40) Count of maintenance requests resolved vs pending.

-- Q-41) Find tenants who moved in and out within the same year.

-- Q-42) Display properties that have been visited but never leased.

-- Q-43) Identify tenants who never missed a payment in the past year.

-- Q-44) List properties with maintenance cost exceeding 10% of their rent.

-- Q-45) Find tenants with overlapping lease periods on the same property.

-- Q-46) Calculate total rent + maintenance cost per property for the current year.

-- Q-47) Find properties visited by more than 5 unique visitors.

-- Q-48) Identify tenants whose monthly rent is below the city average, but security deposit is above average.

-- Q-49) Display cities with highest number of occupied properties.

-- Q-50) Find tenants who gave high interest feedback but never signed a lease.