/**
 * LS180 Lesson 2
 * Assignment 12 Practice Problems: GROUP BY and Aggregate Functions
 * Question 3
 *
 * Write a SQL query that lists all genres for which there is a movie in the
 * `films` table.
 */
-- @block
-- @conn ls180
-- @label view all movie genres
SELECT DISTINCT
  genre
FROM
  films
;
