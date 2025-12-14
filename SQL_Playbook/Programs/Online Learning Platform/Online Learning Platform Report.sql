-- Q-1) List all users who are students.
select * from Users
where role = 'student'


-- Q-2) Show all courses along with their instructor’s id.
select course_id, title, instructor_id from Courses


-- Q-3) Display all lessons for the course “Python for Beginners”.
select l.lesson_id, l.title as lesson, c.title as course from Lessons l
join Courses c on c.course_id = l.course_id
where c.title = 'Python for Beginners'


-- Q-4) Show all enrollments with user names and course titles.
select u.full_name, c.title, count(e.enrollment_id) as total_enrollment from Users u
join Enrollments e on e.user_id = u.user_id
join Courses c on c.course_id = e.course_id
group by u.full_name, c.title
order by total_enrollment desc


-- Q-5) Find all progress records where the status is ‘in_progress’.
select * from Progress
where status = 'in_progress'


-- Q-6) List all users who enrolled in more than one course.
select u.user_id, u.full_name, count(e.course_id) total_course_enrolled from Users u
join Enrollments e on e.user_id = u.user_id
group by u.user_id, u.full_name
having count(e.course_id) > 1


-- Q-7) Find all courses created after 2025-02-01.
select * from Courses
where created_at > '2025-02-01'


-- Q-8) Get all lessons longer than 50 minutes.
select * from Lessons
where duration_minutes > 50


-- Q-9) Find all ratings of 5 stars.
select * from Ratings
where rating = 5


-- Q-10) List all searches done by user ‘Alice Johnson’.
select s.*, u.full_name from Users u
join Searches s on s.user_id = u.user_id
where u.full_name = 'Alice Johnson'


-- Q-11) Count the total number of students.
select count(role) as total_student from Users
where role = 'student'


-- Q-12) Count how many students are enrolled in each course.
select c.title, count(u.role) as total_enrollment from Users u
join Enrollments e on e.user_id = u.user_id
join Courses c on c.course_id = e.course_id
where u.role = 'student'
group by c.title
order by total_enrollment desc


-- Q-13) Calculate the average rating for each course.
select c.course_id, c.title, avg(r.rating) as average_rating from Courses c
join Ratings r on r.course_id = c.course_id
group by c.course_id, c.title
order by average_rating desc


-- Q-14) Find the total duration of all lessons in each course.
select c.course_id, c.title, sum(l.duration_minutes) as total_duration from Lessons l
join Courses c on c.course_id = l.course_id
group by c.course_id, c.title
order by total_duration desc


-- Q-15) Count how many times each keyword was searched.
select search_id, keyword, count(*) as search_count from Searches
group by search_id, keyword
order by search_count desc


-- Q-16) Show a list of students and the courses they are enrolled in.


-- Q-17) List all students along with their completed lessons.


-- Q-18) Show courses along with the number of enrolled students.


-- Q-19) List all users with their course ratings (if any).
select u.user_id, u.full_name, r.course_id, r.rating from Users u
join Ratings r on r.user_id = r.user_id
group by u.user_id, u.full_name, r.course_id, r.rating
order by r.rating desc


-- Q-20) Show lessons and progress status for user ‘Bob Smith’.
select u.user_id, u.full_name, l.lesson_id, l.title, p.status from Users u
join Progress p on p.user_id = u.user_id
join Lessons l on l.lesson_id = p.lesson_id
where u.full_name = 'Bob Smith'
group by u.user_id, u.full_name, l.lesson_id, l.title, p.status


-- Q-21) Find the top 3 courses with the highest average rating.
select top 3 c.course_id, c.title, avg(r.rating) as average_rating from Courses c
join Ratings r on r.course_id = c.course_id
group by c.course_id, c.title
order by average_rating desc


-- Q-22) Find users who have not rated any courses.
select u.user_id, u.full_name from Users u
left join Ratings r on r.user_id = u.user_id
where r.user_id is null
group by u.user_id, u.full_name


-- Q-23) Find courses where all lessons are completed by a particular student.


-- Q-24) List students who searched for keywords but are not enrolled in the related course.


-- Q-25) Find the instructor whose courses have the most enrollments.


-- Q-26) List courses and the total number of lessons completed by all students.


-- Q-27) Find lessons that have never been completed.
select l.lesson_id, l.title, p.status from Lessons l
join Progress p on p.lesson_id = l.lesson_id
where p.status = 'in_progress'
group by l.lesson_id, l.title, p.status


-- Q-28) Find students enrolled in more than 2 courses.
select u.user_id, u.full_name, count(e.course_id) as total_courses from Users u
join Enrollments e on e.user_id = u.user_id
where u.role = 'student'
group by u.user_id, u.full_name
having count(e.course_id) > 2


-- Q-29) List courses with the highest total lesson duration.
select c.course_id, c.title, sum(l.duration_minutes) as total_lesson_duration from Courses c
join Lessons l on l.course_id = c.course_id
group by c.course_id, c.title
order by c.course_id


-- Q-30) Find students who completed all lessons but did not give a rating.


-- Q-31) Find users who joined in the last 30 days.


-- Q-32) List courses created in the last month.


-- Q-33) Show searches performed in March 2025.
select * from Searches
where search_date >= '2025-03-01' and search_date <= '2025-03-31'


-- Q-34) Find the first enrollment date for each student.


-- Q-35) List progress records completed in the last week.


-- Q-36) Find students who rated a course and also completed all its lessons.


-- Q-37) Show courses that have no enrollments.


-- Q-38) Find the most searched keyword by students.


-- Q-39) List students who have enrolled in both “Python for Beginners” and “Advanced SQL Queries”.

-- Example: 1
select u.user_id, u.full_name from Users u
join Enrollments e on e.user_id = u.user_id
join Courses c on c.course_id = e.course_id
where c.title = 'Python for Beginners' or c.title = 'Advanced SQL Queries' and u.role = 'student'
group by u.user_id, u.full_name
having count(distinct c.title) = 2

-- Example: 2
select u.user_id, u.full_name FROM Users u
join Enrollments e on u.user_id = e.user_id
join Courses c on e.course_id = c.course_id
where c.title IN ('Python for Beginners', 'Advanced SQL Queries')
group by u.user_id, u.full_name
having count(distinct c.title) = 2


-- Q-40) Find courses where the average lesson duration is more than 50 minutes.
select c.course_id, c.title, avg(l.duration_minutes) as average_duration from Courses c
join Lessons l on l.course_id = c.course_id
group by c.course_id, c.title
having avg(l.duration_minutes) > 50
order by average_duration desc