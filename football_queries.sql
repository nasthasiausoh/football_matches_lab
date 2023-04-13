-- -- Find all the matches from 2017.
-- SELECT * FROM matches WHERE season = '2017';


-- -- matches featuring barcelona"
-- SELECT * FROM matches WHERE hometeam = 'Barcelona';
-- SELECT * FROM matches WHERE awayteam = 'Barcelona';

-- Scottish divisions included:
-- SELECT * FROM divisions WHERE country = 'Scotland';

-- Find the value of the code for the Bundesliga division.
-- SELECT code FROM divisions WHERE name = 'Bundesliga';
-- D1 for Bundesliga



-- teams with the word 'city' in their name
-- SELECT * FROM matches WHERE LOWER(hometeam) LIKE LOWER('%city%');
-- SELECT * FROM matches WHERE LOWER(awayteam) LIKE LOWER('%city%');


-- how many teams played in matches recording in a french division?
SELECT code FROM divisions WHERE country = 'France';
-- Codes from French divisions are F1 and F2.
SELECT COUNT(*) FROM matches GROUP BY division_code = 'F1';