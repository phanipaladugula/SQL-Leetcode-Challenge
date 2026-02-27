-- Table: Visits
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | visit_id    | int     |
-- | customer_id | int     |
-- +-------------+---------+
-- visit_id is UNIQUE.
-- Each row represents a visit made by a customer.

-- ------------------------------------------------------------

-- Table: Transactions
-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | transaction_id | int     |
-- | visit_id       | int     |
-- | amount         | int     |
-- +----------------+---------+
-- transaction_id is UNIQUE.
-- Each row represents a transaction made during a visit.

-- ------------------------------------------------------------

-- Problem:
-- Find the IDs of customers who visited
-- but did NOT make any transactions,
-- and count how many such visits they had.

-- Return:
-- +-------------+----------------+
-- | customer_id | count_no_trans |
-- +-------------+----------------+
-- Result can be returned in ANY order.

-- ------------------------------------------------------------

-- Example:

-- Visits
-- +----------+-------------+
-- | visit_id | customer_id |
-- +----------+-------------+
-- | 1        | 23          |
-- | 2        | 9           |
-- | 4        | 30          |
-- | 5        | 54          |
-- | 6        | 96          |
-- | 7        | 54          |
-- | 8        | 54          |
-- +----------+-------------+

-- Transactions
-- +----------------+----------+--------+
-- | transaction_id | visit_id | amount |
-- +----------------+----------+--------+
-- | 2              | 5        | 310    |
-- | 3              | 5        | 300    |
-- | 9              | 5        | 200    |
-- | 12             | 1        | 910    |
-- | 13             | 2        | 970    |
-- +----------------+----------+--------+

-- ------------------------------------------------------------
-- Final Solution:

SELECT v.customer_id,
       COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id;