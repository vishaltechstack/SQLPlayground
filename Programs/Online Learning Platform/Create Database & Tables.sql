CREATE DATABASE OnlineLearningPlatform

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    role VARCHAR(20),
    created_at DATE
)

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    instructor_id INT,
    title VARCHAR(150),
    category VARCHAR(50),
    created_at DATE,
    
    FOREIGN KEY (instructor_id) REFERENCES Users(user_id)
)

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    user_id INT,
    course_id INT,
    enroll_date DATE,

    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
)

CREATE TABLE Lessons (
    lesson_id INT PRIMARY KEY,
    course_id INT,
    title VARCHAR(150),
    duration_minutes INT,

    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
)

CREATE TABLE Progress (
    progress_id INT PRIMARY KEY,
    user_id INT,
    course_id INT,
    lesson_id INT,
    status VARCHAR(20),
    completed_at DATE,

    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (lesson_id) REFERENCES Lessons(lesson_id)
)

CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY,
    user_id INT,
    course_id INT,
    rating INT,
    review TEXT,
    rated_at DATE,

    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
)

CREATE TABLE Searches (
    search_id INT PRIMARY KEY,
    user_id INT,
    keyword VARCHAR(100),
    search_date DATE,

    FOREIGN KEY (user_id) REFERENCES Users(user_id)
)