INSERT INTO Users (user_id, full_name, email, role, created_at) VALUES
(101, 'Alice Johnson', 'alice.johnson@example.com', 'student', '2025-01-15'),
(102, 'Bob Smith', 'bob.smith@example.com', 'student', '2025-02-10'),
(103, 'Charlie Brown', 'charlie.brown@example.com', 'instructor', '2024-12-05'),
(104, 'Diana Prince', 'diana.prince@example.com', 'student', '2025-03-22'),
(105, 'Ethan Hunt', 'ethan.hunt@example.com', 'instructor', '2024-11-12'),
(106, 'Fiona Gallagher', 'fiona.gallagher@example.com', 'student', '2025-04-01'),
(107, 'George Martin', 'george.martin@example.com', 'instructor', '2024-10-20'),
(108, 'Hannah Baker', 'hannah.baker@example.com', 'student', '2025-02-28'),
(109, 'Ian Curtis', 'ian.curtis@example.com', 'student', '2025-01-30'),
(110, 'Julia Roberts', 'julia.roberts@example.com', 'student', '2025-03-05'),
(111, 'Kevin Spacey', 'kevin.spacey@example.com', 'student', '2025-02-12'),
(112, 'Laura Palmer', 'laura.palmer@example.com', 'student', '2025-01-25'),
(113, 'Michael Scott', 'michael.scott@example.com', 'student', '2025-03-01'),
(114, 'Nancy Drew', 'nancy.drew@example.com', 'student', '2025-03-10'),
(115, 'Oscar Wilde', 'oscar.wilde@example.com', 'instructor', '2024-09-15'),
(116, 'Pam Beesly', 'pam.beesly@example.com', 'student', '2025-02-20'),
(117, 'Quentin Tarantino', 'quentin.t@example.com', 'instructor', '2024-11-30'),
(118, 'Rachel Green', 'rachel.green@example.com', 'student', '2025-03-18'),
(119, 'Steve Rogers', 'steve.rogers@example.com', 'student', '2025-03-22'),
(120, 'Tina Turner', 'tina.turner@example.com', 'student', '2025-01-28');


INSERT INTO Courses (course_id, instructor_id, title, category, created_at) VALUES
(201, 103, 'Python for Beginners', 'Programming', '2025-01-20'),
(202, 105, 'Advanced SQL Queries', 'Database', '2025-02-15'),
(203, 107, 'Data Analytics with Excel', 'Data Analysis', '2025-03-01'),
(204, 103, 'Machine Learning Basics', 'AI/ML', '2025-03-10'),
(205, 105, 'Web Development with Flask', 'Web Development', '2025-03-18'),
(206, 115, 'Statistics for Data Science', 'Data Science', '2025-02-05'),
(207, 117, 'Introduction to JavaScript', 'Programming', '2025-01-30'),
(208, 103, 'Python OOP Concepts', 'Programming', '2025-02-28'),
(209, 107, 'Excel Advanced Functions', 'Data Analysis', '2025-03-05'),
(210, 105, 'Database Design Fundamentals', 'Database', '2025-03-12');


INSERT INTO Enrollments (enrollment_id, user_id, course_id, enroll_date) VALUES
(301, 101, 201, '2025-01-21'),
(302, 102, 201, '2025-01-22'),
(303, 104, 202, '2025-02-16'),
(304, 106, 203, '2025-03-05'),
(305, 108, 204, '2025-03-12'),
(306, 109, 205, '2025-03-20'),
(307, 101, 203, '2025-03-06'),
(308, 102, 202, '2025-02-18'),
(309, 104, 201, '2025-01-25'),
(310, 106, 204, '2025-03-15'),
(311, 111, 201, '2025-02-15'),
(312, 112, 206, '2025-02-10'),
(313, 113, 207, '2025-03-02'),
(314, 114, 209, '2025-03-12'),
(315, 116, 210, '2025-03-18'),
(316, 118, 203, '2025-03-20'),
(317, 119, 204, '2025-03-22'),
(318, 120, 201, '2025-01-30'),
(319, 101, 208, '2025-02-28'),
(320, 102, 208, '2025-03-01');


INSERT INTO Lessons (lesson_id, course_id, title, duration_minutes) VALUES
(401, 201, 'Introduction to Python', 30),
(402, 201, 'Python Variables and Data Types', 45),
(403, 201, 'Control Flow in Python', 50),
(404, 202, 'Basic SQL Queries', 40),
(405, 202, 'Joins and Subqueries', 60),
(406, 203, 'Excel Basics', 35),
(407, 203, 'Data Visualization in Excel', 50),
(408, 204, 'Introduction to Machine Learning', 55),
(409, 204, 'Linear Regression', 60),
(410, 205, 'Flask Setup and Basics', 45),
(411, 205, 'Building Routes and Templates', 50),
(412, 206, 'Descriptive Statistics', 40),
(413, 206, 'Probability Distributions', 50),
(414, 207, 'JavaScript Basics', 35),
(415, 207, 'DOM Manipulation', 45),
(416, 208, 'Python Classes and Objects', 55),
(417, 208, 'Inheritance and Polymorphism', 60),
(418, 209, 'Pivot Tables', 50),
(419, 209, 'Advanced Formulas', 55),
(420, 210, 'ER Diagrams', 45),
(421, 210, 'Normalization', 50);


INSERT INTO Progress (progress_id, user_id, course_id, lesson_id, status, completed_at) VALUES
(501, 101, 201, 401, 'completed', '2025-01-22'),
(502, 101, 201, 402, 'completed', '2025-01-23'),
(503, 102, 201, 401, 'completed', '2025-01-23'),
(504, 104, 202, 404, 'in_progress', NULL),
(505, 106, 203, 406, 'completed', '2025-03-06'),
(506, 108, 204, 408, 'completed', '2025-03-13'),
(507, 101, 203, 407, 'in_progress', NULL),
(508, 109, 205, 410, 'completed', '2025-03-21'),
(509, 111, 201, 401, 'completed', '2025-02-16'),
(510, 112, 206, 412, 'completed', '2025-02-12'),
(511, 113, 207, 414, 'completed', '2025-03-03'),
(512, 114, 209, 418, 'in_progress', NULL),
(513, 116, 210, 420, 'completed', '2025-03-19'),
(514, 118, 203, 406, 'completed', '2025-03-21'),
(515, 119, 204, 408, 'completed', '2025-03-23'),
(516, 120, 201, 402, 'completed', '2025-02-01'),
(517, 101, 208, 416, 'completed', '2025-03-01'),
(518, 102, 208, 417, 'in_progress', NULL);


INSERT INTO Ratings (rating_id, user_id, course_id, rating, review, rated_at) VALUES
(601, 101, 201, 5, 'Great course for beginners!', '2025-01-25'),
(602, 102, 201, 4, 'Very helpful lessons.', '2025-01-26'),
(603, 104, 202, 5, 'Excellent SQL course!', '2025-02-20'),
(604, 106, 203, 4, 'Good content but could be more examples.', '2025-03-10'),
(605, 108, 204, 5, 'Loved the ML introduction!', '2025-03-18'),
(606, 111, 201, 4, 'Nice pace.', '2025-02-18'),
(607, 112, 206, 5, 'Very clear explanation of stats.', '2025-02-14'),
(608, 113, 207, 4, 'Good for JS basics.', '2025-03-04'),
(609, 114, 209, 3, 'Could use more examples.', '2025-03-13'),
(610, 116, 210, 5, 'Helpful course for DB design.', '2025-03-20');


INSERT INTO Searches (search_id, user_id, keyword, search_date) VALUES
(701, 101, 'Python loops', '2025-01-21'),
(702, 102, 'SQL Joins', '2025-02-16'),
(703, 104, 'Excel charts', '2025-03-06'),
(704, 106, 'Machine Learning regression', '2025-03-12'),
(705, 108, 'Flask routing', '2025-03-19'),
(706, 109, 'Data visualization Python', '2025-03-21'),
(707, 101, 'Advanced Excel formulas', '2025-03-07'),
(708, 112, 'Probability distributions', '2025-02-13'),
(709, 113, 'DOM events JavaScript', '2025-03-05'),
(710, 114, 'Pivot tables Excel', '2025-03-14'),
(711, 116, 'Normalization examples', '2025-03-18'),
(712, 118, 'Python OOP examples', '2025-03-22'),
(713, 119, 'Linear regression tutorial', '2025-03-23'),
(714, 120, 'Python classes', '2025-02-02');