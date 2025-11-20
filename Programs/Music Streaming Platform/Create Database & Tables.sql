CREATE DATABASE MusicStreamingPlatform

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    country VARCHAR(100),
    signup_date DATE
)

CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(150),
    country VARCHAR(100),
    debut_year INT
)

CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    album_name VARCHAR(150),
    artist_id INT,
    release_year INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
)

CREATE TABLE Songs (
    song_id INT PRIMARY KEY,
    song_title VARCHAR(150),
    artist_id INT,
    album_id INT,
    duration_seconds INT,
    genre VARCHAR(100),
    release_date DATE,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
)

CREATE TABLE Streams (
    stream_id INT PRIMARY KEY,
    user_id INT,
    song_id INT,
    stream_date DATETIME,
    device VARCHAR(100),
    skipped BIT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
)

CREATE TABLE Playlists (
    playlist_id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(150),
    created_on DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
)

CREATE TABLE Playlist_Songs (
    playlist_id INT,
    song_id INT,
    added_on DATE,
    PRIMARY KEY (playlist_id, song_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
)

CREATE TABLE User_Subscriptions (
    subscription_id INT PRIMARY KEY,
    user_id INT,
    selected_plan VARCHAR(50),          -- Free, Premium, Family, etc.
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
)