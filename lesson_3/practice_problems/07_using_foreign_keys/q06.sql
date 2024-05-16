/**
 * LS180 Lesson 3
 * Assignment 7 Practice Problems: Using Foreign Keys
 * Question 6
 *
 * Write a SQL statement that will prevent NULL values from being stored in
 * `orders.product_id`. What happens if you execute that statement?
 *
 * Answer:
 *
 * Because the `orders` table still has a row where `product_id` is NULL, you
 * won't be able to add the NOT NULL constraint.
 */
-- @block
-- @conn ls180_3_07
-- @label test -- try to add product_id NOT NULL
ALTER TABLE orders
ALTER product_id
SET NOT NULL
;

/*
=> ERROR: column "product_id" of relation "orders" contains null values
*/
