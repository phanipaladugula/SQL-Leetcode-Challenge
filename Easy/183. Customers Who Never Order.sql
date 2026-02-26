-- Table: Customers
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- +-------------+---------+
-- id is the PRIMARY KEY.

-- ------------------------------------------------------------

-- Table: Orders
-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | id          | int  |
-- | customerId  | int  |
-- +-------------+------+
-- id is PRIMARY KEY.
-- customerId references Customers(id).

-- ------------------------------------------------------------

-- Problem:
-- Find all customers who NEVER placed any order.

-- ------------------------------------------------------------

-- Final Query:

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.id IS NULL;