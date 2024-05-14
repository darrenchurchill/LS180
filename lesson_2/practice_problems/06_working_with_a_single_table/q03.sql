/**
 * LS180 Lesson 2
 * Assignment 6 Practice Problems: Working with a Single Table
 * Question 3
 *
 * Write 3 SQL queries that can be used to retrieve the second row of the
 * `people` table.
 *
 * name      | age  | occupation
 * ----      | ---- | ----
 * Abby      | 34   | biologist
 * Mu'nisah  | 26   | NULL
 * Mirabelle | 40   | contractor
 */
-- @block
-- @conn ls180
-- @label 1 -- select 2nd row using name
SELECT
  *
FROM
  people
WHERE
  name = 'Mu''nisah'
;

-- @label 2 -- select 2nd row using age
SELECT
  *
FROM
  people
WHERE
  age = 26
;

-- @label 3 -- select 2nd row using occupation
SELECT
  *
FROM
  people
WHERE
  occupation IS NULL
;
