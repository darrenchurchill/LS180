/**
 * LS180 Lesson 2
 * Assignment 7 Practice Problems: Loading Database Dumps
 * Question 8
 *
 * Write a SQL statement that will return the title and duration of each movie
 * longer than 2 hours, with the longest movies first.
 *
 * title                     | year | genre     | director         | duration
 * ----                      | ---- | ----      | ----             | ----
 * 1984                      | 1956 | scifi     | Michael Anderson | 90
 * Tinker Tailor Soldier Spy | 2011 | espionage | Tomas Alfredson  | 127
 * The Birdcage              | 1996 | comedy    | Mike Nichols     | 118
 */
-- @block
-- @conn ls180
-- @label movies > 2 hrs, ordered by duration desc
SELECT
  title,
  duration
FROM
  films
WHERE
  duration > (60 * 2)
ORDER BY
  duration DESC
;
