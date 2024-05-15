/**
 * LS180 Lesson 2
 * Assignment 12 Practice Problems: GROUP BY and Aggregate Functions
 * Question 7
 *
 * Write a SQL query that determines the average duration of movies for each
 * decade in the `films` table, rounded to the nearest minute and listed in
 * chronological order.
 */
-- @block
-- @conn ls180
-- @label average duration by decade
SELECT
  "year" / 10 * 10 decade,
  round(avg(duration)) avg_duration
FROM
  films
GROUP BY
  decade
ORDER BY
  decade
;
