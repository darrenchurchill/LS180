/**
 * LS180 Lesson 3
 * Assignment 6 Practice Problems: Working with Multiple Tables
 * Question 2
 *
 * Write a query that determines how many tickets have been sold.
 *
 * count
 * -------
 * 3783
 * (1 row)
 */
-- @block
-- @conn ls180_3_06
-- @label count num tickets sold
SELECT
  count(*)
FROM
  tickets
;
