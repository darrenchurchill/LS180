/**
 * LS180 Lesson 2
 * Assignment 7 Practice Problems: Loading Database Dumps
 * Question 7
 *
 * Write a SQL statement that will return the title and age in years of each
 * movie, with newest movies listed first.
 *
 * title                     | year | genre     | director         | duration
 * ----                      | ---- | ----      | ----             | ----
 * 1984                      | 1956 | scifi     | Michael Anderson | 90
 * Tinker Tailor Soldier Spy | 2011 | espionage | Tomas Alfredson  | 127
 * The Birdcage              | 1996 | comedy    | Mike Nichols     | 118
 */
-- @block
-- @conn ls180
-- @label movies and age, ordered by age
SELECT
  title,
  extract(
    YEAR
    FROM
      now()
  ) - "year" AS age_years
FROM
  films
ORDER BY
  age_years
;
