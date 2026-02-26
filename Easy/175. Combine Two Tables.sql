-- Table: Person
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | personId    | int     |
-- | lastName    | varchar |
-- | firstName   | varchar |
-- +-------------+---------+
-- personId is the PRIMARY KEY (unique values).
-- This table stores basic information about people.

-- ------------------------------------------------------------

-- Table: Address
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | addressId   | int     |
-- | personId    | int     |
-- | city        | varchar |
-- | state       | varchar |
-- +-------------+---------+
-- addressId is the PRIMARY KEY (unique values).
-- Each row contains city and state information
-- for a person identified by personId.

-- ------------------------------------------------------------

-- Problem Statement:
-- Write a SQL query to report:
-- firstName, lastName, city, state
-- for EACH person in the Person table.
--
-- If a person does NOT have an address entry
-- in the Address table,
-- return NULL for city and state.
--
-- The result can be returned in ANY order.

-- ------------------------------------------------------------

select p.firstName, p.lastName, a.city, a.state
from Person as p 
left join Address as a 
on a.personId = p.personId;

