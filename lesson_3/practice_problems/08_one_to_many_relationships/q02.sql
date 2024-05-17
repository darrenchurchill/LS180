/**
 * LS180 Lesson 3
 * Assignment 8 Practice Problems: One-to-Many Relationships
 * Question 2
 *
 * Write a SQL statement to retrieve the call times, duration, and first name
 * for all calls **not** made to William Swift.
 */
-- @block
-- @conn ls180_3_08
-- @label retrieve data
SELECT
  c.when call_time,
  c.duration call_duration,
  con.first_name
FROM
  calls c
  JOIN contacts con ON c.contact_id = con.id
WHERE
  con.first_name <> 'William'
  AND con.last_name <> 'Swift'
;
