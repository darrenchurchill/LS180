/**
 * LS180 Lesson 2
 * Assignment 11 Practice Problems: Using Keys
 * Question 2
 *
 * Write a SQL statement to retrieve the next value from the sequence created in
 * Question 1.
 */
-- @block
-- @conn ls180
-- @label retrieve next counter value
SELECT
  nextval('counter')
;
