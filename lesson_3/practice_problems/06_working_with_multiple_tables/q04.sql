/**
 * LS180 Lesson 3
 * Assignment 6 Practice Problems: Working with Multiple Tables
 * Question 4
 *
 * Write a query that determines what percentage of the customers in the
 * database have purchased a ticket to one or more of the events.
 *
 *   percent
 * ----------
 *     16.52
 * (1 row)
 */
-- @block
-- @conn ls180_3_06
-- @label percentage of customers who've purchased >= 1 ticket
SELECT
  round(100 * count(DISTINCT t.customer_id) / count(DISTINCT c.id)::decimal, 2) percent
FROM
  customers c
  LEFT OUTER JOIN tickets t ON c.id = t.customer_id
;
