/**
 * LS180 Lesson 2
 * Assignment 11 Practice Problems: Using Keys
 * Question 9
 *
 * Write a SQL statement that modifies the table `films` to remove its primary
 * key while preserving the `id` column and the values it contains.
 */
-- @block
-- @conn ls180
-- @label drop films primary key if exists
ALTER TABLE films
DROP CONSTRAINT IF EXISTS films_pkey
;

-- @label view all film ids
SELECT
  id
FROM
  films
;
