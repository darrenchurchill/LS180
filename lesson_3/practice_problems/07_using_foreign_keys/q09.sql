/**
 * LS180 Lesson 3
 * Assignment 7 Practice Problems: Using Foreign Keys
 * Question 9
 *
 * Write SQL statements to insert the data shown in the table from Question 8.
 *
 * Product    | Review
 * ----       | ----
 * small bolt | a little small
 * small bolt | very round!
 * large bolt | could have been smaller
 */
-- @block
-- @conn ls180_3_07
-- @label create temp reviews table
CREATE TABLE temp_reviews (product_name text, review text)
;

-- @label insert into temp reviews
INSERT INTO
  temp_reviews (product_name, review)
VALUES
  ('small bolt', 'a little small'),
  ('small bolt', 'very round!'),
  ('large bolt', 'could have been smaller')
;

-- @label preview data for insertion
SELECT
  p.id product_id,
  t.review
FROM
  temp_reviews t
  JOIN products p ON t.product_name = p.name
ORDER BY
  product_id
;

-- @label insert into reviews
INSERT INTO
  reviews (product_id, review)
SELECT
  p.id product_id,
  t.review
FROM
  temp_reviews t
  JOIN products p ON t.product_name = p.name
ORDER BY
  product_id
;

-- @label drop temp reviews table
DROP TABLE IF EXISTS temp_reviews
;

-- @label view data in original form
SELECT
  p.name product,
  r.review
FROM
  reviews r
  JOIN products p ON r.product_id = p.id
;
