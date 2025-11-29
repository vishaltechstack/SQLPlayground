-- Q-1) List all students along with their department name.
select s.first_name, s.last_name, d.department_name from Departments d
join Students s on s.department_id = d.department_id
group by s.first_name, s.last_name, d.department_name
order by s.first_name


-- Q-2) Show all courses offered by the Computer Science department.
select c.course_id ,c.course_name from Courses c
join Departments d on d.department_id = c.department_id
where d.department_name = 'Computer Science and Engineering'
group by c.course_id ,c.course_name


-- Q-3) Count total students in each department.
select d.department_name, sum(s.student_id) as total_student from Departments d
join Students s on s.department_id = d.department_id
group by d.department_name
order by total_student desc


-- Q-4) List courses with credit value greater than 3.
select course_id, course_name, credits from Courses
where credits > 3


-- Q-5) Find all students enrolled in semester "Fall" of 2024.
select e.enrollment_id, s.student_id, s.first_name, s.last_name from Enrollments e
join Students s on s.student_id = e.student_id
where e.semester = 'Fall' and e.year = 2024
group by e.enrollment_id, s.student_id, s.first_name, s.last_name


-- Q-6) For each department, show number of courses offered.
select d.department_name, count(c.course_name) as number_of_courses from Courses c
join Departments d on d.department_id = c.department_id
group by d.department_name
order by number_of_courses


-- Q-7) Find students who are enrolled in more than 5 courses.
select s.student_id, s.first_name, s.last_name, COUNT(c.course_id) as total_courses_enrolled from Students s
join Enrollments e on e.student_id = s.student_id
join Courses c on c.course_id = e.course_id
group by s.student_id, s.first_name, s.last_name
having COUNT(c.course_id) > 5
order by total_courses_enrolled desc


-- Q-8) Show average score per course.
select c.course_id, c.course_name, AVG(es.score) as average_score from Exam_Scores es
join Enrollments e on e.enrollment_id = es.enrollment_id
join Courses c on c.course_id = e.course_id
group by c.course_id, c.course_name
order by average_score desc


-- Q-9) List students who never appeared for an exam.
select s.student_id, s.first_name, s.last_name from Students s
join Enrollments e on e.student_id = s.student_id
join Exam_Scores es on es.enrollment_id = e.enrollment_id
where es.is_absent = 1
group by s.student_id, s.first_name, s.last_name


-- Q-10) Show the top 3 students with highest total scores.
select top 3 s.student_id, s.first_name, s.last_name, sum(es.score) as total_score from Students s
join Enrollments e on e.student_id = s.student_id
join Exam_Scores es on es.enrollment_id = e.enrollment_id
group by s.student_id, s.first_name, s.last_name
order by total_score desc


-- Q-11) List students enrolled in courses outside their department.
select distinct
    s.student_id,
    s.first_name,
    s.last_name,
    s.department_id as student_department,
    c.course_id,
    c.course_name,
    c.department_id as course_department
from Students s
join Enrollments e on s.student_id = e.student_id
join Courses c on e.course_id = c.course_id
where s.department_id <> c.department_id


-- Q-12) For each student, calculate GPA (use weighted average based on credits).


-- Q-13) Find the department whose students have the highest average score.


-- Q-14) Identify students failing more than 2 courses (score < 35).


-- Q-15) Show the course with the widest score gap (max score minus min score).


-- Q-16) Find students whose attendance is high but score is low.


-- Q-17) Find the hardest course based on average score.
select top 1 c.course_id, c.course_name, avg(es.score) as average_score from Courses c
join Enrollments e on e.course_id = c.course_id
join Exam_Scores es on es.enrollment_id = e.enrollment_id
group by c.course_id, c.course_name
order by average_score desc


-- Q-18) Rank students within each department based on their total score.


-- Q-19) Show the improvement or decline in student average between two semesters.


-- Q-20) Compare pass percentage by department.


-- Q-21) List the top scoring student in each course during Spring 2024.