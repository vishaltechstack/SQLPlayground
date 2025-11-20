CREATE DATABASE SocialMediaEngagementAnalyzer

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    created_at DATETIME
)

CREATE TABLE Posts (
    post_id INT PRIMARY KEY,
    user_id INT,
    content TEXT,
    posted_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
)

CREATE TABLE Likes (
    like_id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    liked_at DATETIME,
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
)

CREATE TABLE Comments (
    comment_id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    comment_text TEXT,
    commented_at DATETIME,
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
)

CREATE TABLE Followers (
    follower_id INT,
    following_id INT,
    followed_at DATETIME,
    PRIMARY KEY (follower_id, following_id),
    FOREIGN KEY (follower_id) REFERENCES Users(user_id),
    FOREIGN KEY (following_id) REFERENCES Users(user_id)
)

CREATE TABLE Post_Engagement (
    post_id INT PRIMARY KEY,
    total_likes INT DEFAULT 0,
    total_comments INT DEFAULT 0,
    total_shares INT DEFAULT 0
)