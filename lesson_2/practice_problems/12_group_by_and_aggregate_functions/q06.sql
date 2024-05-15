/**
 * LS180 Lesson 2
 * Assignment 12 Practice Problems: GROUP BY and Aggregate Functions
 * Question 6
 *
 * Write a SQL query that determines the average duration for each genre in the
 * `films` table, rounded to the nearest minute.
 */
-- @block
-- @conn ls180
-- @label average duration by genre
SELECT
  genre,
  round(avg(duration)) avg_duration
FROM
  films
GROUP BY
  genre
;
