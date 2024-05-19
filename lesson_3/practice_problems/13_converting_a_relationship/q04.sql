/**
 * LS180 Lesson 3
 * Assignment 13 Practice Problems: Converting a 1:M Relationship to a M:M Relationship
 * Question 4
 *
 * Write a SQL statement to remove any unneeded columns from `films`.
 */
-- @block
-- @conn ls180_3_13
-- @label remove unneeded films columns
-- @label drop films.director_id
ALTER TABLE films
DROP COLUMN director_id
;
