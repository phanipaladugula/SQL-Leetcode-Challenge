-- Table: Activity
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | player_id    | int     |
-- | device_id    | int     |
-- | event_date   | date    |
-- | games_played | int     |
-- +--------------+---------+
--
-- (player_id, event_date) is the PRIMARY KEY.
-- Each row represents a login activity of a player.

-- ------------------------------------------------------------
-- Problem:
-- Write a query to find the FIRST login date for each player.
--
-- Return:
-- +-----------+-------------+
-- | player_id | first_login |
-- +-----------+-------------+
--
-- Result can be returned in ANY order.

-- ------------------------------------------------------------
-- Example Input:
--
-- Activity table:
-- +-----------+-----------+------------+--------------+
-- | player_id | device_id | event_date | games_played |
-- +-----------+-----------+------------+--------------+
-- | 1         | 2         | 2016-03-01 | 5            |
-- | 1         | 2         | 2016-05-02 | 6            |
-- | 2         | 3         | 2017-06-25 | 1            |
-- | 3         | 1         | 2016-03-02 | 0            |
-- | 3         | 4         | 2018-07-03 | 5            |
-- +-----------+-----------+------------+--------------+

-- ------------------------------------------------------------
-- Expected Output:
--
-- +-----------+-------------+
-- | player_id | first_login |
-- +-----------+-------------+
-- | 1         | 2016-03-01  |
-- | 2         | 2017-06-25  |
-- | 3         | 2016-03-02  |
-- +-----------+-------------+

-- ------------------------------------------------------------
-- Solution:
-- Use MIN(event_date) to get the earliest login date
-- for each player.

SELECT player_id,
       MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;