/**
 * LS180 Lesson 2
 * Assignment 8 Practice Problems: More Single Table Queries
 * Question 3
 *
 * Write a SQL query to list the ten states with the most rows in the `people`
 * table in descending order.
 */
-- @block
-- @conn residents
-- @label 10 states with the most rows
SELECT
  state,
  count(*)
FROM
  people
GROUP BY
  state
ORDER BY
  COUNT DESC
LIMIT
  10
;
