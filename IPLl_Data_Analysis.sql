create database ipl_match;
create schema ipl;
select * from ipl_match.match;
-- Total Records --
select count(*) from ipl_match.match;

-- Q.1 which team is maximum time winner in between 2008-2020? --

SELECT winner, COUNT(*) AS max_win_count
FROM ipl_match.match
GROUP BY winner
ORDER BY max_win_count DESC
LIMIT 1;

-- Q.2 Group of each team with winning result in IPL between 2008-2020 ? --
SELECT winner, COUNT(*) AS max_win_count
FROM ipl_match.match
GROUP BY winner
ORDER BY max_win_count DESC;

-- Q.3 Which player have record for maxium time Player of the match in between 2008-2020? --
SELECT player_of_match, COUNT(*) AS max_time_player_of_the_match
FROM ipl_match.match
GROUP BY player_of_match
ORDER BY max_time_player_of_the_match DESC
limit 1;

-- Q.4 Which player is least record for player of the match? --
SELECT player_of_match, COUNT(*) AS min_time_player_of_the_match
FROM ipl_match.match
GROUP BY player_of_match
ORDER BY min_time_player_of_the_match asc
limit 1;

-- Q.5 Find out the winner team which have result margin record morethan 70 runs? --
select * from ipl_match.match;

SELECT winner
FROM ipl_match.match
GROUP BY winner
HAVING COUNT(*) > 70;

-- Q.6 Find out the group each city names have matches played between 2008-2020 in alphabetical order?

SELECT city as city_name ,count(*)
FROM ipl_match.match
GROUP BY city
ORDER BY city_name asc;

-- Q.7 Find out the venue (stadium) name where minimum time matches played between 2008-2020?--
select * from ipl_match.match;

SELECT venue, COUNT(*) AS min_time_played_venue
FROM ipl_match.match
GROUP BY venue
ORDER BY min_time_played_venue asc
limit 1;

-- Q.8 Which team is maximum times wins by Runs? --
SELECT winner,count(*)
FROM ipl_match.match
GROUP BY result
HAVING result ='runs';

-- Q.9 Which team is maximum times wins by Wickets?
SELECT winner,count(*)
FROM ipl_match.match
GROUP BY result
HAVING result ='wickets';

-- Q.10 Find out the venue (stadium) name where maximum time matches played between 2008-2020?--
SELECT venue, COUNT(*) AS max_time_played_venue
FROM ipl_match.match
GROUP BY venue
ORDER BY max_time_played_venue desc
limit 1;