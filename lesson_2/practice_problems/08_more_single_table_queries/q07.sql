/**
 * LS180 Lesson 2
 * Assignment 8 Practice Problems: More Single Table Queries
 * Question 7
 *
 * Write a SQL statement that will update the `given_name` values to be all
 * uppercase for all users with an email address that contains `teleworm.us`.
 */
-- @block
-- @conn residents
-- @label update rows in people
-- @label preview data
SELECT
  *
FROM
  people
WHERE
  email ILIKE '%teleworm.us'
;

-- @label do transform
UPDATE people
SET
  given_name = upper(given_name)
WHERE
  email ILIKE '%teleworm.us'
;
