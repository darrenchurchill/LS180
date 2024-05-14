/**
 * LS180 Lesson 2
 * Assignment 6 Practice Problems: Working with a Single Table
 * Question 2
 *
 * Write SQL statements to insert the data below into `people`.
 *
 * name      | age  | occupation
 * ----      | ---- | ----
 * Abby      | 34   | biologist
 * Mu'nisah  | 26   | NULL
 * Mirabelle | 40   | contractor
 */
-- @block
-- @conn ls180
-- @label insert people
-- @label reset -- delete all rows
DELETE FROM people
;

-- @label insert data into people
INSERT INTO
  people (name, age, occupation)
VALUES
  ('Abby', 34, 'biologist'),
  ('Mu''nisah', 26, NULL),
  ('Mirabelle', 40, 'contractor')
;

-- @label view people data
SELECT
  *
FROM
  people
;
