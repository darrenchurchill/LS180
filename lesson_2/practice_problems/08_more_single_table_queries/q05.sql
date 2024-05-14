/**
 * LS180 Lesson 2
 * Assignment 8 Practice Problems: More Single Table Queries
 * Question 5
 *
 * Write a SQL statement that will delete the person with ID `3399` from the
 * `people` table.
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
  id = 3399
;

-- @label do delete
DELETE FROM people
WHERE
  id = 3399
;
