/**
 * LS180 Lesson 3
 * Assignment 7 Practice Problems: Using Foreign Keys
 * Question 3
 *
 * Use `psql` to insert the data shown in the following table into the database:
 *
 * Quantity | Product
 * ----     | ----
 * 10       | small bolt
 * 25       | small bolt
 * 15       | large bolt
 */
-- @block
-- @conn ls180_3_07
-- @label reset -- delete all products
DELETE FROM products
;

-- @label reset -- delete all orders
DELETE FROM orders
;

-- @label create temp table
CREATE TABLE temp_product_name_quantity (quantity int, name text)
;

-- @label insert data into temp table
INSERT INTO
  temp_product_name_quantity (quantity, name)
VALUES
  (10, 'small bolt'),
  (25, 'small bolt'),
  (15, 'large bolt')
;

-- @label view temp table
SELECT
  *
FROM
  temp_product_name_quantity
;

-- @label preview products for insertion
SELECT DISTINCT
  name
FROM
  temp_product_name_quantity
;

-- @label insert into products
INSERT INTO
  products (name)
SELECT DISTINCT
  name
FROM
  temp_product_name_quantity
;

-- @label view products
SELECT
  *
FROM
  products
;

-- @label preview orders for insertion
SELECT
  p.id product_id,
  t.quantity
FROM
  temp_product_name_quantity t
  JOIN products p ON t.name = p.name
ORDER BY
  product_id
;

-- @label insert into orders
INSERT INTO
  orders (product_id, quantity)
SELECT
  p.id product_id,
  t.quantity
FROM
  temp_product_name_quantity t
  JOIN products p ON t.name = p.name
ORDER BY
  product_id
;

-- @label view orders
SELECT
  *
FROM
  orders
;

-- @label drop temp table
DROP TABLE IF EXISTS temp_product_name_quantity
;

-- @label view data in its original format
SELECT
  o.quantity,
  p.name
FROM
  orders o
  JOIN products p ON o.product_id = p.id
;
