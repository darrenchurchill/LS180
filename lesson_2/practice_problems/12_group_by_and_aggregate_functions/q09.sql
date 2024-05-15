/**
 * LS180 Lesson 2
 * Assignment 12 Practice Problems: GROUP BY and Aggregate Functions
 * Question 9
 *
 * Write a SQL query that will return the following data:
 *
 *    genre   | count
 * -----------+-------
 *  scifi     |     5
 *  comedy    |     4
 *  drama     |     2
 *  espionage |     2
 *  crime     |     1
 *  thriller  |     1
 *  horror    |     1
 *  action    |     1
 * (8 rows)
 */
-- @block
-- @conn ls180
-- @label count of films by genre
SELECT
  genre,
  count(*) "count"
FROM
  films
GROUP BY
  genre
ORDER BY
  "count" DESC
;
