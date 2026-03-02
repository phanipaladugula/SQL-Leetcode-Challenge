-- Table: Employee
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | department  | varchar |
-- | managerId   | int     |
-- +-------------+---------+
-- id is the primary key.
-- managerId is the id of the employee's manager.
-- If managerId is NULL, the employee has no manager.

-- ------------------------------------------------------------
-- Problem:
-- Write a query to find managers with at least 5 direct reports.
-- Return the result table in any order.

-- ------------------------------------------------------------
-- Solution (Approach 1: GROUP BY + HAVING)

SELECT e2.name
FROM Employee e1
JOIN Employee e2
ON e1.managerId = e2.id
GROUP BY e1.managerId
HAVING COUNT(*) >= 5;