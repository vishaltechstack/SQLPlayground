-- Q-1) List all movies released after 2015.
select * from movies
where release_year > 2015


-- Q-2) Show all users from India.
select * from users
where country = 'India'


-- Q-3) Find all ratings for movie_id = 10.
select * from ratings
where movie_id = 10


-- Q-4) List all movies in English.
select * from movies
where language = 'English'


-- Q-5) Find distinct genres in the database.
select distinct(genre) from movies


-- Q-6) List top 10 highest-rated movies (average rating).
select top 10 m.*, r.rating from ratings r
join movies m on m.movie_id = r.movie_id
order by r.rating desc


-- Q-7) Count movies per genre.
select genre, count(title) as total_movies from movies
group by genre
order by total_movies desc


-- Q-8) Show movies directed by Christopher Nolan.
select m.*, d.name as director_name from movies m
join movie_directors md on md.movie_id = m.movie_id
join directors d on d.director_id = md.director_id
where d.name = 'Christopher Nolan'


-- Q-9) Count ratings submitted each year.
select year(rating_date) as rating_year, count(rating) as total_ratings from ratings
group by year(rating_date)
order by total_ratings desc


-- Q-10) Show movies released before 2000 with rating average > 4.
select m.*, r.rating, r.rating_date from movies m
join ratings r on r.movie_id = m.movie_id
where m.release_year > 2000 and r.rating > 4
order by r.rating desc


-- Q-15) Find the top rated movie for each genre.
/*select
	m.genre,
	m.title as top_movie,
	max(r.rating) as highest_rating 
from movies m
join ratings r on r.movie_id = m.movie_id
order by highest_rating desc
*/

-- Q-16) Identify country with most registered users.
select top 1 country, count(user_id) as total_registered_users from users
group by country
order by total_registered_users desc


-- Q-17) List users who have rated movies across 5+ genres.

-- Q-18) Find top 5 directors with the highest average movie rating.
select top 5 d.director_id, d.name, avg(r.rating) as avg_movie_rating from directors d
join movie_directors md on md.director_id = d.director_id
join ratings r on r.movie_id = md.movie_id
group by d.director_id, d.name
order by avg_movie_rating desc


-- Q-19) Show the trend of rating count per month.

-- Q-20) List the oldest movie with at least 4.5 ratings.
select m.* from movies m
join ratings r on r.movie_id = m.movie_id
where m.release_year between 1900 and 2000 and r.rating >= 4.5

select * from movies
select * from ratings

-- Q-21) Find movies that always received a rating higher than 3.

-- Q-22) Show the top 5 movies by total number of ratings.

-- Q-23) Find directors who worked on more than 3 movies.

-- Q-24) List movie pairs that have been commonly rated by more than 20 users.

-- Q-25) Recommend top 5 movies for a given user based on similar reviewers.

-- Q-26) Find users with the closest rating patterns.

-- Q-27) Group users by their favorite genre based on their rating history.

-- Q-28) Detect rating anomalies (e.g., users giving only 1 or 5).