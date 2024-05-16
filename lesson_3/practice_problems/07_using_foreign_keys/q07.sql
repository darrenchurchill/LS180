/**
 * LS180 Lesson 3
 * Assignment 7 Practice Problems: Using Foreign Keys
 * Question 7
 *
 * Make any changes needed to avoid the error message from Question 6.
 */
-- @block
-- @conn ls180_3_07
-- @label delete orders with NULL product_id
DELETE FROM orders
WHERE
  product_id IS NULL
;

-- @label add product_id NOT NULL
ALTER TABLE orders
ALTER product_id
SET NOT NULL
;

-- @label view all orders
SELECT
  *
FROM
  orders
;
