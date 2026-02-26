-- Table: Employee
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | salary      | int     |
-- | managerId   | int     |
-- +-------------+---------+
-- id is the PRIMARY KEY (unique values).
--
-- Each row represents:
-- - Employee ID
-- - Employee Name
-- - Salary
-- - Manager's ID (managerId)
--
-- managerId is NULL if employee has no manager.

-- ------------------------------------------------------------

-- Problem Statement:
-- Find employees who earn MORE than their managers.
--
-- Return:
-- +----------+
-- | Employee |
-- +----------+
-- | name     |
-- +----------+
--
-- Result can be returned in ANY order.

-- ------------------------------------------------------------

-- Example Input:

-- +----+-------+--------+-----------+
-- | id | name  | salary | managerId |
-- +----+-------+--------+-----------+
-- | 1  | Joe   | 70000  | 3         |
-- | 2  | Henry | 80000  | 4         |
-- | 3  | Sam   | 60000  | NULL      |
-- | 4  | Max   | 90000  | NULL      |
-- +----+-------+--------+-----------+

-- ------------------------------------------------------------

-- Expected Output:
-- +----------+
-- | Employee |
-- +----------+
-- | Joe      |
-- +----------+
--
-- Explanation:
-- Joe earns 70000.
-- His manager (id = 3, Sam) earns 60000.
-- Since 70000 > 60000, Joe is included.
--
-- Others either:
-- - Do not earn more than their manager
-- - Or have no manager (managerId is NULL)

-- ------------------------------------------------------------


SELECT e.name AS Employee
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary;