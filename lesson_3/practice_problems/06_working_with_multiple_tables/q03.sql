/**
 * LS180 Lesson 3
 * Assignment 6 Practice Problems: Working with Multiple Tables
 * Question 3
 *
 * Write a query that determines how many different customers purchased tickets
 * to at least one event.
 *
 *   count
 * -------
 *   1652
 * (1 row)
 */
-- @block
-- @conn ls180_3_06
-- @label count customers who purchased >= 1 ticket
SELECT
  count(DISTINCT customer_id)
FROM
  tickets
;
