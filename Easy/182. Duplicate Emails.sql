-- Table: Person
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | email       | varchar |
-- +-------------+---------+
-- id is the PRIMARY KEY (unique values).
--
-- Each row contains an email address.
-- The email field:
-- - Will NOT contain uppercase letters
-- - Will NOT be NULL

-- ------------------------------------------------------------

-- Problem Statement:
-- Find all email addresses that appear MORE THAN ONCE.
--
-- Return:
-- +---------+
-- | Email   |
-- +---------+
--
-- Result can be returned in ANY order.

-- ------------------------------------------------------------

-- Example Input:

-- +----+---------+
-- | id | email   |
-- +----+---------+
-- | 1  | a@b.com |
-- | 2  | c@d.com |
-- | 3  | a@b.com |
-- +----+---------+

-- ------------------------------------------------------------

-- Expected Output:

-- +---------+
-- | Email   |
-- +---------+
-- | a@b.com |
-- +---------+

-- Explanation:
-- a@b.com appears 2 times.
-- c@d.com appears only once.
-- We return only duplicate emails.

-- ------------------------------------------------------------

-- Final Query:

SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;