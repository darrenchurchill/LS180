/**
 * LS180 Lesson 2
 * Assignment 8 Practice Problems: More Single Table Queries
 * Question 6
 *
 * Write a SQL statement that will delete all users located in the state of
 * California (CA).
 */
-- @block
-- @conn residents
-- @label delete from people
-- @label preview data
SELECT
  *
FROM
  people
WHERE
  state ILIKE 'CA'
;

-- @label do delete
DELETE FROM people
WHERE
  state ILIKE 'CA'
;
