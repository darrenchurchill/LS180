/**
 * LS180 Lesson 2
 * Assignment 6 Practice Problems: Working with a Single Table
 * Question 4
 *
 * Write a SQL statement that will create a table named `birds` that can hold
 * the following values.
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
-- @label setup birds table
-- @label reset -- drop table if exists
DROP TABLE IF EXISTS birds
;

-- @label create birds table
CREATE TABLE birds (
  name text,
  LENGTH decimal(3, 1),
  wingspan decimal(3, 1),
  FAMILY text,
  extinct boolean
)
;
