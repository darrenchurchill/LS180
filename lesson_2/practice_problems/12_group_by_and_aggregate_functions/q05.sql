/**
 * LS180 Lesson 2
 * Assignment 12 Practice Problems: GROUP BY and Aggregate Functions
 * Question 5
 *
 * Write a SQL query that determines the average duration across all the movies
 * in the `films` table, rounded to the nearest minute.
 */
-- @block
-- @conn ls180
-- @label average duration
SELECT
  round(avg(duration)) avg_duration
FROM
  films
;
