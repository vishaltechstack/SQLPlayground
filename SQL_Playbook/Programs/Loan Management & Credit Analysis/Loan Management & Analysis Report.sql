-- Q-1) List all customers with their email and phone.

-- Q-2) Find all loans that are currently Active.

-- Q-3) Show EMI payments that were made late.

-- Q-4) Count how many customers are from each city.

-- Q-5) List the top 10 highest principal loan amounts.

-- Q-6) Find customers who have more than one loan.

-- Q-7) Show total EMI amount paid for each loan.

-- Q-8) Find loans where the maturity date is already over but status is still Active.

-- Q-9) Retrieve all transactions for a specific loan along with descriptions.

-- Q-10) Calculate the average interest rate for each loan type.

-- Q-11) Identify defaulted loans and their customer names.

-- Q-12) Show the current outstanding EMI count for each Active loan.

-- Q-13) List customers whose credit score has improved over time.

-- Q-14) Show the latest credit score for each customer.

-- Q-15) Find loans that had penalty transactions.

-- Q-16) Retrieve customers who made consecutive late EMI payments.

-- Q-17) For each loan, find the total amount paid including penalties.

-- Q-18) Identify the customer with the highest total principal borrowed.

-- Q-19) Find Active loans where the EMI payment amount is less than interest-only amount (potential issue).

-- Q-20) Get customers who have never made a late payment for any loan.

-- Q-21) Rank customers by total loan amount taken using window functions.

-- Q-22) Find loans that were closed earlier than their maturity date.

-- Q-23) Show month-wise EMI collection totals.

-- Q-24) Identify customers whose credit score dropped by more than 50 points in any year.

-- Q-25) For each customer, show their loan history with latest credit score using a single query (joins + window functions).

/* Q-26) Write a query to identify customers who meet all these conditions:
1. They have at least one loan with a default status.
2. They have two or more late EMIs across all their loans.
3. Their latest recorded credit score is below 650.
*/

/* Q-27) Write a query to generate a repayment summary for each loan that includes:
1. Total amount disbursed.
2. Total EMI amount paid so far.
3. Total penalties charged.
4. Remaining principal amount.
*/

/* Q-28) Write a query to classify each customer into one of these categories based on their three most recent credit score entries:
1. Improving (increasing trend)
2. Declining (decreasing trend)
3. Stable (scores roughly unchanged)
4. Loans where EMI amounts differ unusually across months.
*/

/* Q-29) Write a query to find active loans that meet all these conditions:
1. They have more than three late EMIs.
2. The interest rate is above 12 percent.
3. The most recent EMI was delayed.
*/