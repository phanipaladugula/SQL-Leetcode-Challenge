-- Table: Sales
-- +-------------+-------+
-- | Column Name | Type  |
-- +-------------+-------+
-- | sale_id     | int   |
-- | product_id  | int   |
-- | year        | int   |
-- | quantity    | int   |
-- | price       | int   |
-- +-------------+-------+
-- (sale_id, year) is the PRIMARY KEY.
-- product_id is FOREIGN KEY referencing Product(product_id).
-- price is per unit.

-- ------------------------------------------------------------

-- Table: Product
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | product_id   | int     |
-- | product_name | varchar |
-- +--------------+---------+
-- product_id is PRIMARY KEY.

-- ------------------------------------------------------------

-- Problem:
-- For each sale in Sales,
-- return:
-- product_name, year, price

-- ------------------------------------------------------------

-- Since product_id in Sales is a FOREIGN KEY,
-- every sale has a matching product.
-- Therefore INNER JOIN is sufficient.

-- ------------------------------------------------------------

-- Final Query:

SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id;