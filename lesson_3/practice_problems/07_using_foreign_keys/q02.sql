/**
 * LS180 Lesson 3
 * Assignment 7 Practice Problems: Using Foreign Keys
 * Question 2
 *
 * Update the `orders` table so that referential integrity will be preserved for
 * the data between `orders` and `products`.
 */
-- @block
-- @conn ls180_3_07
-- @label update orders add foreign key
ALTER TABLE orders
ADD FOREIGN KEY (product_id) REFERENCES products (id)
;
