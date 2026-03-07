-- Table
-- MyNumbers
-- +-----+
-- | num |
-- +-----+

-- A single number is a number that appears exactly once.
-- Find the largest single number.
-- If no such number exists return NULL

select max(num) as num from 
(
select m.num from Mynumbers m
group by m.num 
having count(*) = 1
) as value
