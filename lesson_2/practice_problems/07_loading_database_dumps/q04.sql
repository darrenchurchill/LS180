/**
 * LS180 Lesson 2
 * Assignment 7 Practice Problems: Loading Database Dumps
 * Question 4
 *
 * Write the SQL statements needed to add two additional columns to the `films`
 * table:
 *
 * 1. `director`, which will hold a director's full name
 * 2. `duration`, which will hold the length of the film in minutes
 */
-- @block
-- @conn ls180
-- @label add columns
ALTER TABLE films
ADD director text,
ADD duration int
;
