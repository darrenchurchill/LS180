/**
 * LS180 Lesson 2
 * Assignment 10 Practice Problems: More Constraints
 * Question 4
 *
 * Add a constraint to the `films` table that ensures all films have a unique
 * title.
 */
-- @block
-- @conn ls180
-- @label add title unique constraint
ALTER TABLE films
ADD UNIQUE (title)
;
