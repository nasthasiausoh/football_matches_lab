
-- Find all the matches from 2017
-- SELECT * FROM matches 
-- WHERE season = 2017



-- Find all the matches featuring Barcelona
-- SELECT * FROM matches WHERE hometeam = 'Barcelona';
-- SELECT * FROM matches WHERE awayteam = 'Barcelona'; 
-- Solutions do not include the away team. It only includes the home team.




-- What are the names of the Scottish divisions included?
-- SELECT name FROM divisions WHERE country = 'Scotland';



-- Find the value of the `code` for the `Bundesliga` division. 
-- SELECT code FROM divisions WHERE name = 'Bundesliga';
-- The code is D1
-- Now, use that code to find out how many matches Freiburg have played in that division. 
-- HINT: You will need to query both tables (already queried the first for the bundesliga code)
-- SELECT COUNT(*) FROM matches 
-- WHERE division_code = 'D1'
-- AND (hometeam = 'Freiburg' OR awayteam = 'Freiburg');



-- -- Find the teams which include the word "City" in their name. 
-- -- SELECT hometeam FROM matches
-- -- WHERE hometeam LIKE '%City%';
-- -- The above just returns a list of home teams as many times as they appear, 
-- -- so we need to use the DISTINCT function instead so we do not have these repeats.
-- -- The SELECT DISTINCT statement is used to return only DISTINCT/different values, not duplicate values.
-- SELECT DISTINCT hometeam FROM matches
-- WHERE hometeam LIKE '%City%';



-- How many different teams have played in matches recorded in a French division?
-- Psuedo code: Find the code for the french division:
-- SELECT code FROM divisions
-- WHERE country = 'France';
-- Result is 2 codes: F1 and F2.
-- Psuedo code: select distinct count on matches where that french division code is used.
-- SELECT COUNT(DISTINCT hometeam) FROM matches 
-- WHERE division_code IN ('F1', 'F2');



-- Have Huddersfield played Swansea in any of the recorded matches?
-- SELECT * FROM matches
-- WHERE (hometeam = 'Huddersfield' AND awayteam = 'Swansea');
-- SELECT * FROM matches
-- WHERE (hometeam = 'Swansea' AND awayteam = 'Huddersfield');



-- -- How many draws were there in the `Eredivisie` between 2010 and 2015?
-- -- SELECT code FROM divisions 
-- -- WHERE name = 'Eredivisie';
-- -- the code is N1.
-- SELECT COUNT(*) FROM matches 
-- WHERE division_code = 'N1'
-- AND ftr = 'D'
-- AND season BETWEEN 2010 AND 2015;



-- Select the matches played in the Premier League in order of total goals
--  scored from highest to lowest.
--  When two matches have the same total the match with more home goals
--   should come first.
-- SELECT code FROM divisions WHERE name = 'Premier League';
-- The code is E0
-- SELECT * FROM matches WHERE division_code = 'E0' 
-- ORDER BY (fthg + ftag) DESC, fthg DESC;



-- -- In which division and which season were the most goals scored?
-- SELECT division_code, season, SUM (fthg + ftag) FROM matches 
-- GROUP BY division_code, season
-- ORDER BY sum DESC limit 1; 

-- SELECT name FROM divisions WHERE code = 'EC';
-- -- Division is National League and this was in 2013 with a total of 1,592 total goals.