/**
 * LS180 Lesson 2
 * Assignment 12 Practice Problems: GROUP BY and Aggregate Functions
 * Question 8
 *
 * Write a SQL query that finds all films whose director has the first name
 * `John`.
 */
-- @block
-- @conn ls180
-- @label films with director named John
SELECT
  *
FROM
  films
WHERE
  director LIKE 'John %'
;
