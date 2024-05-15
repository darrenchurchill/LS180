/**
 * LS180 Lesson 2
 * Assignment 12 Practice Problems: GROUP BY and Aggregate Functions
 * Question 4
 *
 * Write a SQL query that lists all genres for which there is a movie in the
 * `films` table, this time without using `DISTINCT`.
 */
-- @block
-- @conn ls180
-- @label view all movie genres
SELECT
  genre
FROM
  films
GROUP BY
  genre
;
