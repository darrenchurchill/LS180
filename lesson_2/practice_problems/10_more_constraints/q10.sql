/**
 * LS180 Lesson 2
 * Assignment 10 Practice Problems: More Constraints
 * Question 10
 *
 * Write a SQL statement to remove the constraint added in Question 7.
 */
-- @block
-- @conn ls180
-- @label remove title constraint
ALTER TABLE films
DROP CONSTRAINT films_title_check
;
