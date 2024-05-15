/**
 * LS180 Lesson 2
 * Assignment 11 Practice Problems: Using Keys
 * Question 6
 *
 * Write a SQL statement to add an auto-incrementing integer primary key column
 * to the `films` table.
 */
-- @block
-- @conn ls180
-- @label films primary key
-- @label reset -- drop primary key if exists
ALTER TABLE films
DROP IF EXISTS id
;

-- @label add films primary key
ALTER TABLE films
ADD id serial PRIMARY KEY
;

-- @label view all films
SELECT
  *
FROM
  films
;
