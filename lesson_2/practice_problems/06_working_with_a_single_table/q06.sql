/**
 * LS180 Lesson 2
 * Assignment 6 Practice Problems: Working with a Single Table
 * Question 6
 *
 * Write a SQL statement that finds the names and families for all the birds
 * that are not extinct, in order from longest to shortest (based on the
 * `length` column's value).
 *
 * name              | length | wingspan | family       | extinct
 * ----              | ----   | ----     | ----         | ----
 * Spotted Towhee    | 21.6   | 26.7     | Emberizidae  | f
 * American Robin    | 25.5   | 36.0     | Turdidae     | f
 * Greater Koa Finch | 19.0   | 24.0     | Fringillidae | t
 * Carolina Parakeet | 33.0   | 55.8     | Psittacidae  | t
 * Common Kestrel    | 35.5   | 73.5     | Falconidae   | f
 */
-- @block
-- @conn ls180
-- @label not extinct birds order by length
SELECT
  name,
  "family"
FROM
  birds
WHERE
  NOT extinct
ORDER BY
  LENGTH DESC
;
