/**
 * LS180 Lesson 3
 * Assignment 7 Practice Problems: Using Foreign Keys
 * Question 8
 *
 * Create a new table called `reviews` to store the data shown below. This table
 * should include a primary key and a reference to the `products` table.
 *
 * Product    | Review
 * ----       | ----
 * small bolt | a little small
 * small bolt | very round!
 * large bolt | could have been smaller
 */
-- @label create reviews table
CREATE TABLE reviews (
  id serial PRIMARY KEY,
  product_id int NOT NULL REFERENCES products (id),
  review text NOT NULL
)
;
