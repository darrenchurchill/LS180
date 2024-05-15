/**
 * LS180 Lesson 2
 * Assignment 10 Practice Problems: More Constraints
 * Question 11
 *
 * Add a constraint to the `films` table ensuring all films have a year between
 * 1900 and 2100.
 */
-- @block
-- @conn ls180
-- @label add year constraint
ALTER TABLE films
ADD CHECK ("year" BETWEEN 1900 AND 2100)
;
