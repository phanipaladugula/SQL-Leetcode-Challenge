-- Table: Project
-- +-------------+-------------+
-- | project_id  | employee_id |
-- +-------------+-------------+
-- (project_id, employee_id) is the PRIMARY KEY.
-- employee_id is a FOREIGN KEY to Employee table.

-- Table: Employee
-- +-------------+--------+------------------+
-- | employee_id | name   | experience_years |
-- +-------------+--------+------------------+
-- employee_id is the PRIMARY KEY.
-- experience_years is NOT NULL.

-- ------------------------------------------------------------
-- Problem:
-- Report the average experience years of employees
-- for each project.
-- Round the result to 2 decimal places.
-- Return result in any order.

-- ------------------------------------------------------------
-- Example Input:
--
-- Project:
-- +-------------+-------------+
-- | project_id  | employee_id |
-- +-------------+-------------+
-- | 1           | 1           |
-- | 1           | 2           |
-- | 1           | 3           |
-- | 2           | 1           |
-- | 2           | 4           |
-- +-------------+-------------+
--
-- Employee:
-- +-------------+--------+------------------+
-- | employee_id | name   | experience_years |
-- +-------------+--------+------------------+
-- | 1           | Khaled | 3                |
-- | 2           | Ali    | 2                |
-- | 3           | John   | 1                |
-- | 4           | Doe    | 2                |
-- +-------------+--------+------------------+
--
-- Expected Output:
--
-- +-------------+---------------+
-- | project_id  | average_years |
-- +-------------+---------------+
-- | 1           | 2.00          |
-- | 2           | 2.50          |
-- +-------------+---------------+

-- ------------------------------------------------------------
-- Optimized Solution
-- INNER JOIN is sufficient because employee_id
-- always exists in Employee table.

SELECT p.project_id,ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;