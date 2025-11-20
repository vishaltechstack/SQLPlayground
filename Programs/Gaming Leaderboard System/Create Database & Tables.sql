create database GamingLeaderboardSystem

CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100),
    country VARCHAR(50),
    join_date DATE
)

CREATE TABLE Games (
    game_id INT PRIMARY KEY,
    game_name VARCHAR(100),
    genre VARCHAR(50),
    release_year INT
)

CREATE TABLE PlayerScores (
    score_id INT PRIMARY KEY,
    player_id INT,
    game_id INT,
    score INT,
    play_date DATE,

    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
)

CREATE TABLE MatchHistory (
    match_id INT PRIMARY KEY,
    player_id INT,
    game_id INT,
    result VARCHAR(20),
    time_spent_minutes INT,
    match_date DATE,

    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
)

CREATE TABLE Leaderboard (
    leaderboard_id INT PRIMARY KEY,
    game_id INT,
    player_id INT,
    rank INT,
    total_score INT,
    leaderboard_date DATE,

    FOREIGN KEY (game_id) REFERENCES Games(game_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
)