-- Table: Employee
-- +----+--------+
-- | id | salary |
-- +----+--------+
-- id is the PRIMARY KEY.
-- Each row contains the salary of an employee.

-- ------------------------------------------------------------
-- Problem:
-- Write a function getNthHighestSalary(N) that returns
-- the Nth highest DISTINCT salary.
--
-- If there are fewer than N distinct salaries,
-- return NULL.

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
-- N = 2
--
-- Output:
-- +------------------------+
-- | getNthHighestSalary(2) |
-- +------------------------+
-- | 200                    |
-- +------------------------+

-- ------------------------------------------------------------
-- Example 2:
--
-- Input:
-- +----+--------+
-- | id | salary |
-- +----+--------+
-- | 1  | 100    |
-- +----+--------+
-- N = 2
--
-- Output:
-- +------------------------+
-- | getNthHighestSalary(2) |
-- +------------------------+
-- | NULL                   |
-- +------------------------+

-- ------------------------------------------------------------
-- Solution (Using DISTINCT + LIMIT)

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;
    RETURN (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT N, 1
    );
END;