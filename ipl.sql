use ipl_analytics;

-- Top 10 Run Scorers All Time
SELECT 
    batter,
    SUM(batsman_runs) AS total_runs,
    COUNT(*) AS balls_faced,
    ROUND(SUM(batsman_runs) * 100.0 / COUNT(*), 2) AS strike_rate
FROM deliveries
GROUP BY batter
ORDER BY total_runs DESC
LIMIT 10;

--  Top 10 Wicket Takers

SELECT 
    bowler,
    COUNT(*) AS total_wickets
FROM deliveries
WHERE is_wicket = 1
AND dismissal_kind NOT IN ('run out', 'retired hurt', 'obstructing the field')
GROUP BY bowler
ORDER BY total_wickets DESC
LIMIT 10;

-- Most IPL Titles by Team

SELECT 
    winner,
    COUNT(*) AS titles
FROM matches
WHERE match_type = 'Final'
AND winner != 'No Result'
GROUP BY winner
ORDER BY titles DESC;

--  Most Player of the Match Awards

SELECT 
    player_of_match,
    COUNT(*) AS awards
FROM matches
WHERE player_of_match != 'None'
GROUP BY player_of_match
ORDER BY awards DESC
LIMIT 10;

-- Win % by Toss Decision

SELECT 
    toss_decision,
    COUNT(*) AS total_matches,
    SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) AS toss_win_matches,
    ROUND(SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS win_percentage
FROM matches
WHERE winner != 'No Result'
GROUP BY toss_decision;














