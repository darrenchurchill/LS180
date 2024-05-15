/**
 * LS180 Lesson 2
 * Assignment 10 Practice Problems: More Constraints
 * Question 2
 *
 * Modify all of the `films` columns to be `NOT NULL`.
 */
-- @block
-- @conn ls180
-- @label update films table
-- @label set all columns not null
ALTER TABLE films
ALTER title
SET NOT NULL,
ALTER "year"
SET NOT NULL,
ALTER genre
SET NOT NULL,
ALTER director
SET NOT NULL,
ALTER duration
SET NOT NULL
;
