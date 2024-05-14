/**
 * LS180 Lesson 2
 * Assignment 7 Practice Problems: Loading Database Dumps
 * Question 3
 *
 * Write a SQL statement that returns all rows in the `films` table with a title
 * shorter than 12 letters.
 */
-- @block
-- @conn ls180
-- @label films with title < 12 chars
SELECT
  *
FROM
  films
WHERE
  length(title) < 12
;
