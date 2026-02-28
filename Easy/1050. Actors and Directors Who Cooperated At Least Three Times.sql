-- Table: ActorDirector
-- +-------------+-------------+-------------+
-- | actor_id    | director_id | timestamp   |
-- +-------------+-------------+-------------+
-- | int         | int         | int         |
-- +-------------+-------------+-------------+
--
-- timestamp is the PRIMARY KEY.

-- ------------------------------------------------------------
-- Problem:
-- Find all pairs (actor_id, director_id)
-- where they cooperated at least THREE times.

-- ------------------------------------------------------------
-- Example Input:
--
-- +-------------+-------------+-------------+
-- | actor_id    | director_id | timestamp   |
-- +-------------+-------------+-------------+
-- | 1           | 1           | 0           |
-- | 1           | 1           | 1           |
-- | 1           | 1           | 2           |
-- | 1           | 2           | 3           |
-- | 1           | 2           | 4           |
-- | 2           | 1           | 5           |
-- | 2           | 1           | 6           |
-- +-------------+-------------+-------------+
--
-- Expected Output:
--
-- +-------------+-------------+
-- | actor_id    | director_id |
-- +-------------+-------------+
-- | 1           | 1           |
-- +-------------+-------------+

-- ------------------------------------------------------------
-- Optimized Solution

SELECT actor_id,director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;