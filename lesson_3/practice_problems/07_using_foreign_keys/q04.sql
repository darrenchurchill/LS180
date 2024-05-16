/**
 * LS180 Lesson 3
 * Assignment 7 Practice Problems: Using Foreign Keys
 * Question 4
 *
 * Write a SQL statement that returns a result like this:
 *
 * Quantity | Product
 * ----     | ----
 * 10       | small bolt
 * 25       | small bolt
 * 15       | large bolt
 */
-- @block
-- @conn ls180_3_07
-- @label view data in its original format
SELECT
  o.quantity,
  p.name
FROM
  orders o
  JOIN products p ON o.product_id = p.id
;
