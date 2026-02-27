-- Table: Views
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | article_id    | int     |
-- | author_id     | int     |
-- | viewer_id     | int     |
-- | view_date     | date    |
-- +---------------+---------+
--
-- There is NO primary key.
-- The table may contain duplicate rows.
--
-- Each row means:
-- A viewer viewed an article written by an author.

-- ------------------------------------------------------------

-- Problem:
-- Find all authors who viewed at least one of their own articles.

-- Condition:
-- author_id = viewer_id
--
-- Return:
-- +------+
-- | id   |
-- +------+
-- Sorted in ascending order.

-- ------------------------------------------------------------

-- Final Query:

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id;