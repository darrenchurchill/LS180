/**
 * LS180 Lesson 2
 * Assignment 8 Practice Problems: More Single Table Queries
 * Question 4
 *
 * Write a SQL query that lists each domain used in an email address in the
 * `people` table and how many people in the database have an email address
 * containing that domain. Domains should be listed with the most popular first.
 */
-- @block
-- @conn residents
-- @label most popular email domains
SELECT
  split_part(email, '@', -1) domain,
  count(*) "count"
FROM
  people
GROUP BY
  domain
ORDER BY
  "count" DESC
;
