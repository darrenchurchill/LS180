/**
 * LS180 Lesson 2
 * Assignment 10 Practice Problems: More Constraints
 * Question 6
 *
 * Write a SQL statement to remove the constraint added in Question 4.
 */
-- @block
-- @conn ls180
-- @label remove title unique constraint
ALTER TABLE films
DROP CONSTRAINT films_title_key
;
