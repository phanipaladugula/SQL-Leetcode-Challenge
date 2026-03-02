-- ============================================================
-- 176. Second Highest Salary
-- ============================================================

-- Table: Employee
-- +----+--------+
-- | id | salary |
-- +----+--------+
-- id is the PRIMARY KEY.
-- Each row contains the salary of an employee.

-- ------------------------------------------------------------
-- Problem:
-- Find the SECOND HIGHEST DISTINCT salary.
-- If it does not exist, return NULL.

-- ------------------------------------------------------------
-- Example 1:
--
-- Input:
-- +----+--------+
-- | id | salary |
-- +----+--------+
-- | 1  | 100    |
-- | 2  | 200    |
-- | 3  | 300    |
-- +----+--------+
--
-- Output:
-- +---------------------+
-- | SecondHighestSalary |
-- +---------------------+
-- | 200                 |
-- +---------------------+

-- ------------------------------------------------------------
-- Example 2:
--
-- Input:
-- +----+--------+
-- | id | salary |
-- +----+--------+
-- | 1  | 100    |
-- +----+--------+
--
-- Output:
-- +---------------------+
-- | SecondHighestSalary |
-- +---------------------+
-- | NULL                |
-- +---------------------+

-- ------------------------------------------------------------
-- Solution (Using Subquery + MAX)

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
);