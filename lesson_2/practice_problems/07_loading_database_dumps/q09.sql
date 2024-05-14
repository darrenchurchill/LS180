/**
 * LS180 Lesson 2
 * Assignment 7 Practice Problems: Loading Database Dumps
 * Question 9
 *
 * Write a SQL statement that returns the title of the longest film.
 *
 * title                     | year | genre     | director         | duration
 * ----                      | ---- | ----      | ----             | ----
 * 1984                      | 1956 | scifi     | Michael Anderson | 90
 * Tinker Tailor Soldier Spy | 2011 | espionage | Tomas Alfredson  | 127
 * The Birdcage              | 1996 | comedy    | Mike Nichols     | 118
 */
-- @block
-- @conn ls180
-- @label title of longest film
SELECT
  title longest_film
FROM
  films
ORDER BY
  duration DESC
LIMIT
  1
;
