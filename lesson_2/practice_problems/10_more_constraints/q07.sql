/**
 * LS180 Lesson 2
 * Assignment 10 Practice Problems: More Constraints
 * Question 7
 *
 * Add a constraint to `films` that requires all rows to have a value for
 * `title` at least 1 character long.
 */
-- @block
-- @conn ls180
-- @label add title constraint
ALTER TABLE films
ADD CHECK (length(title) >= 1)
;
