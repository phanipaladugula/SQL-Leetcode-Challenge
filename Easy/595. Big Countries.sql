-- Table: World
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | name        | varchar |
-- | continent   | varchar |
-- | area        | int     |
-- | population  | int     |
-- | gdp         | bigint  |
-- +-------------+---------+
--
-- name is the PRIMARY KEY.
-- Each row contains:
-- - Country name
-- - Continent
-- - Area (in km²)
-- - Population
-- - GDP

-- ------------------------------------------------------------

-- Definition of a Big Country:
-- A country is BIG if:
-- 1) area >= 3000000
-- OR
-- 2) population >= 25000000

-- ------------------------------------------------------------

-- Problem:
-- Return:
-- +-------------+------------+---------+
-- | name        | population | area    |
-- +-------------+------------+---------+
--
-- For all big countries.
-- Result can be returned in ANY order.

-- ------------------------------------------------------------

-- Example:
--
-- Afghanistan → population = 25500100 (>= 25000000) ✔
-- Algeria     → population = 37100000 (>= 25000000) ✔
-- Others do not satisfy conditions.

-- ------------------------------------------------------------

-- Final Query:

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;