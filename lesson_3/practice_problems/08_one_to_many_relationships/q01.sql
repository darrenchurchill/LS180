/**
 * LS180 Lesson 3
 * Assignment 8 Practice Problems: One-to-Many Relationships
 * Question 1
 *
 * Write a SQL statement to add the following call data to the database.
 *
 * when                | duration | first_name | last_name | number
 * ----                | ----     | ----       | ----      | ----
 * 2016-01-18 14:47:00 | 632      | William    | Swift     | 7204890809
 */
-- @block
-- @conn ls180_3_08
-- @label insert data
-- @label is contact in database?
SELECT
  *
FROM
  contacts
WHERE
  first_name = 'William'
  AND last_name = 'Swift'
;

-- @label insert call
INSERT INTO
  calls ("when", duration, contact_id)
VALUES
  ('2016-01-18 14:47:00', 632, 6)
;

-- @label view all calls
SELECT
  *
FROM
  calls
;
