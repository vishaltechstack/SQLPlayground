-- Q-1) List all players from India.
select * from Players
where country = 'India'


-- Q-2) Show all games released after 2015.
select * from Games
where release_year > 2015


-- Q-3) Find all scores for player_id = 1007.
select * from PlayerScores
where player_id = 1007


-- Q-4) Get all match results for game_id = 2004.
select * from MatchHistory
where game_id = 2004


-- Q-5) Show leaderboard entries sorted by rank.
select * from Leaderboard
order by rank


-- Q-6) Find the top 5 highest scores across all games.
select top 5 g.game_id, g.game_name, sum(ps.score) as highest_score from Games g
join PlayerScores ps on ps.game_id = g.game_id
group by g.game_id, g.game_name
order by highest_score desc


-- Q-7) Count how many players joined in jan 2023.
select * from Players
where join_date >= '2023-01-01' and join_date <= '2023-01-31' 


-- Q-8) List all players who have played the game "Mystic Quest".
select p.player_id, p.username, g.game_name from Players p
join PlayerScores ps on ps.player_id = p.player_id
join Games g on g.game_id = ps.game_id
where g.game_name = 'Mystic Quest'
group by p.player_id, p.username, g.game_name


-- Q-9) Find games that no player has ever scored in.
select g.* from Games g
left join PlayerScores ps on ps.game_id = g.game_id
where ps.game_id is null


-- Q-10) Show average score for each game.
select g.game_id, g.game_name, avg(ps.score) average_score from Games g
join PlayerScores ps on ps.game_id = g.game_id
group by g.game_id, g.game_name
order by average_score


-- Q-11) Display each player with the games they have scored in.
select distinct p.player_id, p.username, g.game_id, g.game_name from Players p
join PlayerScores ps on ps.player_id = p.player_id
join Games g on g.game_id = ps.game_id
where ps.score > 0
group by p.player_id, p.username, g.game_id, g.game_name


-- Q-12) List all match history records with player name and game name.
select p.username, g.game_name, mh.* from Players p
join MatchHistory mh on mh.player_id = p.player_id
join Games g on g.game_id = mh.game_id


-- Q-13) Find total time spent by each player on all games.
select p.player_id, p.username, sum(mh.time_spent_minutes) as total_time_spend_minutes from Players p
join MatchHistory mh on mh.player_id = p.player_id
group by p.player_id, p.username
order by p.player_id


-- Q-14) Show each leaderboard entry with player username and game name.
select p.username, g.game_name, lb.* from Players p
join Leaderboard lb on lb.player_id = p.player_id
join Games g on g.game_id = lb.game_id


-- Q-15) Find players who ranked in the top 3 of any leaderboard.
select p.player_id, p.username, l.leaderboard_id, l.rank from Players p
join Leaderboard l on l.player_id = p.player_id
where l.rank = 3
group by p.player_id, p.username, l.leaderboard_id, l.rank


-- Q-16) Find the highest scoring player for each game.


-- Q-17) Show score improvement: compare each player's latest and earliest score in the same game.


-- Q-18) Identify players who never won a match in MatchHistory.
select p.player_id, p.username, mh.result from Players p
join MatchHistory mh on mh.player_id = p.player_id
where mh.result = 'Loss'
group by p.player_id, p.username, mh.result
order by p.player_id


-- Q-19) Find total score per player across all games.
select p.player_id, p.username, sum(ps.score) as total_score from Players p
join PlayerScores ps on ps.player_id = p.player_id
group by p.player_id, p.username
order by p.player_id


-- Q-20) List players with more than 5 matches played.
select p.player_id, p.username, count(mh.player_id) as total_matches_played from Players p
join MatchHistory mh on mh.player_id = p.player_id
group by p.player_id, p.username
having count(mh.player_id) > 5


-- Q-21) Rank players by total score per game using window functions.


-- Q-22) For each player, find the longest match they played.

-- Example: 1
select distinct p.player_id, max(mh.time_spent_minutes) as longest_match_played from Players p
join MatchHistory mh on mh.player_id = p.player_id
group by p.player_id

-- Example: 2
select mh.player_id, mh.match_id, mh.time_spent_minutes
from MatchHistory mh
join (
    select player_id, MAX(time_spent_minutes) AS longest_match_played
    from MatchHistory
    group by player_id
) x
on mh.player_id = x.player_id
and mh.time_spent_minutes = x.longest_match_played;


-- Q-23) Identify “most active country”: which country has the highest number of matches.


-- Q-24) List the least played game based on MatchHistory.


-- Q-25) Detect players who played more than one genre of games.
select p.player_id, p.username, count(g.genre) as total_genre from Players p
join PlayerScores ps on ps.player_id = p.player_id
join Games g on g.game_id = ps.game_id
group by p.player_id, p.username
having count(g.genre) > 1
order by p.player_id


-- Q-26) Create a player performance summary including username, total matches, win rate, and total score.


-- Q-27) Identify the game with the highest average time spent.


-- Q-28) Find players who joined after 2022 and achieved a rank in top 10.


-- Q-29) Compare average score of Action games vs Strategy games.


-- Q-30) Identify inactive players: players with no match in the last 60 days.