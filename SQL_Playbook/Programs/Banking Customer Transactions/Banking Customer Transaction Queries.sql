-- Q-1) List customers who joined 2024.

/* We can do this in 3 ways: 
1.
*/
select * from Customers
where join_date between '2024-01-01' and '2024-12-31'  -- By using 'between' or 'and' operator
--2
select * from Customers
where year(join_date) = 2024  -- By using 'year' function 
--3
select * from Customers
where join_date >= '2024-01-01' and join_date <= '2024-12-31'  -- By using 'and' operator


-- Q-2) Show all accounts with status closed.
select * from Accounts
where status = 'Closed'


-- Q-3) Find all debit transactions above 20,000.
select * from Transactions
where amount > 20000


-- Q-4) Find customers who live in Mumbai.
select * from Customers
where city = 'Mumbai'


-- Q-5) Count total customers per city.
select city, count(customer_id) as total_customer from Customers
group by city


-- Q-6) Show customers with more than one active account.
select * from Customers
select * from Accounts


-- Q-7) Find total transaction amount per account.
select a.account_id, a.account_type, sum(t.amount) as total_transaction_amount from Accounts a
join Transactions t on t.account_id = a.account_id
group by a.account_id, a.account_type
order by total_transaction_amount desc

-- Q-8) Find the latest transaction for each customer.

-- Q-9) List customers whose account balance is above 100,000.
select c.name, a.balance from Customers c
join Accounts a on a.customer_id = c.customer_id
where a.balance > 100000


-- Q-12) Find the top 10 highest debit transactions.
select top 10 txn_id, max(amount) Highest_Transaction_by_DebitCard from Transactions
where txn_type = 'Debit'
group by txn_id
order by Highest_Transaction_by_DebitCard desc


-- Q-13) Count total credit vs debit transactions.
select
	sum(case when txn_type = 'Credit' then amount else 0 end) as total_credit,
	sum(case when txn_type = 'Debit' then amount else 0 end) as total_debit
from Transactions


-- Q-14) Find accounts that have never made a transaction.

-- Q-15) Show total loan amount issued per loan type.
select loan_type, sum(amount) as total_loan_amount from Loans
group by loan_type
order by total_loan_amount desc


-- Q-16) Find customers who spent more than 100,000 in a month.

-- Q-17) Identify accounts with suspicious transactions (same-day multiple transactions > 50,000).

-- Q-18) Calculate interest earned per loan using principal and rate (assume simple interest).

-- Q-19) Show monthly transaction volume trend for the last year.

-- Q-20) Detect customers with sudden balance drops over 30% in a day.

-- Q-21) Find merchants receiving the highest payments.

-- Q-22) List customers who have a loan but no credit card.
select c.name, l.loan_status, cd.card_type from Customers c
join Loans l on l.customer_id = c.customer_id
join Cards cd on cd.customer_id = l.customer_id
where l.loan_status = 'Active' and card_type = 'Debit'


-- Q-23) Rank accounts by total outgoing (debit) amount.
select account_id, sum(amount) as total_outgoing_amount from Transactions
where txn_type = 'Debit'
group by account_id
order by total_outgoing_amount desc


-- Q-24) Find customers with overdue loans (loan_status still Active after N months).

-- Q-25) Identify customers whose cards are active but accounts are closed.
select c.customer_id, c.name, cd.status as card, a.status as account from Customers c
join Cards cd on cd.customer_id = c.customer_id
join Accounts a on a.customer_id = cd.customer_id
where cd.status = 'Active' and a.status = 'Closed'


-- Q-26) List all customers who made a transaction using their account.
select distinct c.* from Customers c
join Accounts a on a.customer_id = c.customer_id
join Transactions t on t.account_id = a.account_id


-- Q-27) Show customer name, account type, latest transaction date.
select c.name, a.account_type, t.txn_date from Customers c
join Accounts a on a.customer_id = c.customer_id
join Transactions t on t.account_id = a.account_id
group by c.name, a.account_type, t.txn_date


-- Q-28) Find loan customers with their total account balance.
select l.*, a.balance  from Loans l
join Accounts a on a.customer_id = l.customer_id


-- Q-29) List card holders along with their card limit and city.
select c.customer_id, c.name, cd.card_id, cd.card_type, cd.limit_amount, c.city from Customers c
join Cards cd on cd.customer_id = c.customer_id
group by c.customer_id, c.name, cd.card_id, cd.card_type, cd.limit_amount, c.city


-- Q-30) Show customers who made card transactions above their credit limit.