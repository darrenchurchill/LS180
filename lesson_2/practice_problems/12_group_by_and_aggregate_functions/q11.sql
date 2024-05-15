/**
 * LS180 Lesson 2
 * Assignment 12 Practice Problems: GROUP BY and Aggregate Functions
 * Question 11
 *
 * Write a SQL query that will return the following data:
 *
 *    genre   | total_duration
 * -----------+----------------
 *  horror    |            113
 *  thriller  |            113
 *  action    |            132
 *  crime     |            175
 *  drama     |            198
 *  espionage |            245
 *  comedy    |            407
 *  scifi     |            632
 * (8 rows)
 */
-- @block
-- @conn ls180
-- @label total duration by genre
SELECT
  genre,
  sum(duration) total_duration
FROM
  films
GROUP BY
  genre
ORDER BY
  total_duration,
  genre
;
