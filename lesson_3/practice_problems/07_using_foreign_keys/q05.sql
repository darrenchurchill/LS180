/**
 * LS180 Lesson 3
 * Assignment 7 Practice Problems: Using Foreign Keys
 * Question 5
 *
 * Can you insert a row into `orders` without a `product_id`? Write a SQL
 * statement to prove your answer.
 *
 * Answer:
 *
 * Yes, you can, because `orders`'s `product_id` column doesn't have a
 * `NOT NULL` constraint.
 */
-- @block
-- @conn ls180_3_07
-- @label test -- insert row into orders where product_id is NULL
INSERT INTO
  orders (quantity)
VALUES
  (100)
;

-- @label view all orders
SELECT
  *
FROM
  orders
;
