-- Table: Customer
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | referee_id  | int     |
-- +-------------+---------+
--
-- id is PRIMARY KEY.
-- referee_id indicates who referred the customer.
-- referee_id can be NULL.

-- ------------------------------------------------------------

-- Problem:
-- Find names of customers who:
-- 1) Are referred by someone with id != 2
-- OR
-- 2) Are not referred by anyone (referee_id IS NULL)

-- ------------------------------------------------------------

-- Final Query:

SELECT name
FROM Customer
WHERE referee_id <> 2
   OR referee_id IS NULL;