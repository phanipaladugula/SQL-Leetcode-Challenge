-- Table: Employee
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | empId       | int     |
-- | name        | varchar |
-- | supervisor  | int     |
-- | salary      | int     |
-- +-------------+---------+
--
-- empId is PRIMARY KEY.

-- Table: Bonus
-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | empId       | int  |
-- | bonus       | int  |
-- +-------------+------+
--
-- empId is PRIMARY KEY and FOREIGN KEY to Employee.empId.

-- ------------------------------------------------------------
-- Problem:
-- Report name and bonus of employees where:
-- 1) bonus < 1000
-- OR
-- 2) employee has no bonus



SELECT e.name,b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;