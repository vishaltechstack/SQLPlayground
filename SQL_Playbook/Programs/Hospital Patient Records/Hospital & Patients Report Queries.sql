-- Q-1) List all patients admitted in the last 30 days.


-- Q-2) Show total number of doctors by department.
select department, count(doctor_id) as total_doctor from doctors
group by department
order by total_doctor desc


-- Q-3) Find the number of patients from each city.
select city, count(patient_id) as number_of_patient from patients
group by city
order by number_of_patient desc


-- Q-4) List the top 10 diagnoses by visit count.
select top 10 diagnosis, count(visit_id) as visit_count from visits
group by diagnosis
order by visit_count desc


-- Q-5) Count total admissions by room type.
select room_type, count(admission_id) as total_admissions from admissions
group by room_type
order by total_admissions


-- Q-6) Find patients who were admitted more than once.
select patient_id, count(*) as admitted from admissions
where patient_id is not null
group by patient_id
having count(*) > 1
order by admitted desc


-- Q-7) Count number of visits per doctor.
select d.doctor_id, d.full_name, count(v.visit_id) as total_visit from doctors d
join visits v on v.doctor_id = d.doctor_id
group by d.doctor_id, d.full_name
order by total_visit desc


-- Q-8) Average treatment cost per department.
select d.department, avg(t.treatment_cost) as average_treatment_cost from doctors d
join admissions a on a.doctor_id = d.doctor_id
join treatments t on t.admission_id = a.admission_id
group by d.department
order by average_treatment_cost desc


-- Q-9) Identify doctors treating most unique patients.


-- Q-10) Find patients discharged within 2 days.


-- Q-11) Find most common treatment performed.


-- Q-12) Calculate total billing amount by payment method.
select payment_method, sum(total_amount) as total_billing_amount from billing
group by payment_method
order by total_billing_amount


-- Q-13) List patients above age 60.


-- Q-14) Count admissions per month.
select datename(month, admit_date) as admission_month, count(*) as total_admission from admissions
group by datename(month, admit_date)
order by total_admission desc


-- Q-15) Find patients who never had an admission but visited OPD.


-- Q-16) Show treatments performed during each admission.


-- Q-17) Calculate total cost of all treatments per patient.


-- Q-18) Find doctor-wise total revenue generated.


-- Q-19) List departments with highest admission counts.


-- Q-20) Identify patients treated by more than one doctor.


-- Q-21) Show longest hospital stay per patient.


-- Q-22) Most common diagnosis per department.


-- Q-23) List all unpaid bills with patient details.


-- Q-24) Total revenue generated each month.
select * from billing


-- Q-25) Identify patients having both OPD visits and IPD admissions.


-- Q-26) Find readmission rate per department.


-- Q-27) Identify doctors with average treatment cost above overall average.


-- Q-28) Rank doctors by total patients treated.


-- Q-29) Calculate mortality rate if discharge contains status = deceased (if column added).


-- Q-30) Determine busiest month for admissions for each department.


-- Q-31) Find patients with longest treatment duration (treatment_count OR stay_days).


-- Q-32) Identify doctors treating chronic patients (3+ visits in 6 months).


-- Q-33) Calculate average time between two admissions for each patient.


-- Q-34) Find total revenue per room type.


-- Q-35) Find percentage of pending payments each month.


-- Q-36) Identify frequent diagnosis patterns per demographic group (gender/age).


-- Q-37) Find departments where average length of stay increased from last year to current.


-- Q-38) Identify top 3 doctors with highest number of successful treatments.


-- Q-39) Segment patients based on total spending (High/Medium/Low).


-- Q-40) Identify self-paying patients with unpaid bills (no insurance if column added).