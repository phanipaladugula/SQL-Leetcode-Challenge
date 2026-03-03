-- Table: Scores
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | score       | decimal |
-- +-------------+---------+
-- id is the primary key.
-- Each row contains the score of a game.

-- ------------------------------------------------------------
-- Problem:
-- Write a query to rank the scores from highest to lowest.
-- If two scores are the same, they should have the same rank.
-- After a tie, the next rank should be the next consecutive integer.
-- (No gaps between ranks → Dense Ranking)
-- Return the result ordered by score in descending order.

-- ------------------------------------------------------------
-- Solution (Window Function - DENSE_RANK)

SELECT score,
       DENSE_RANK() OVER (ORDER BY score DESC) AS `rank`
FROM Scores
ORDER BY score DESC;