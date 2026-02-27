-- Table: Employees
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | name          | varchar |
-- +---------------+---------+
-- id is PRIMARY KEY.

-- ------------------------------------------------------------

-- Table: EmployeeUNI
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | unique_id     | int     |
-- +---------------+---------+
-- (id, unique_id) is PRIMARY KEY.

-- ------------------------------------------------------------

-- Problem:
-- Show unique_id and name for ALL employees.
-- If an employee does not have a unique_id,
-- return NULL instead.

-- ------------------------------------------------------------

-- Since some employees may not have a row
-- in EmployeeUNI, we must use LEFT JOIN.

-- ------------------------------------------------------------

-- Final Query:

SELECT u.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI u
ON e.id = u.id;