-- Q-1) List all employees with their department and job title.
select e.emp_id, e.first_name, e.last_name, e.dept_id, d.dept_name, e.job_id, j.job_title from Employees e
join Departments d on d.dept_id = e.dept_id
join Jobs j on j.job_id = e.job_id
group by e.emp_id, e.first_name, e.last_name, e.dept_id, d.dept_name, e.job_id, j.job_title


-- Q-2) Find employees whose salary is outside their job salary range.


-- Q-3) Identify departments without employees.


-- Q-4) Find the highest paid employee in every department.


-- Q-5) Count employees reporting to each manager.


-- Q-6) Retrieve employees hired in the last 6 months.


-- Q-7) Find the youngest and oldest employee.


-- Q-8) Show employees earning above their department average salary.


-- Q-9) Identify job roles with no assigned employees.


-- Q-10) List employees who switched departments (if historical table exists, skip if not).


-- Q-11) Find employees with average rating below department average.


-- Q-12) Top 3 rated employees for each year.


-- Q-13) Count employees with rating ≥ 4 every year.


-- Q-14) Identify employees with continuous improvement year over year.


-- Q-15) Find rating distribution by department.


-- Q-16) Show employees with no rating in the latest year.


-- Q-17) List employees with more than 5 absences in a month.


-- Q-18) Identify employees with perfect attendance in a year.


-- Q-19) Identify employees frequently on leave on Mondays.


-- Q-20) Calculate attendance percentage for each employee.


-- Q-21) Find employees absent for 3 or more consecutive days.


-- Q-22) Count employees per country.


-- Q-24) Find highest average salary by city.


-- Q-25) Compare performance rating trend against salary growth.


-- Q-26) Find managers whose team averages highest performance rating.


-- Q-27) Identify departments with the highest absence rate.


-- Q-28) Analyze employee turnover per department (if exit data exists).


-- Q-29) Rank departments by productivity (rating + attendance score).


-- Q-30) Show correlation between salary and performance rating.


-- Q-31) Identify offices with highest hiring this year.