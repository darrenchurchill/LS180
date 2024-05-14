/**
 * LS180 Lesson 2
 * Assignment 7 Practice Problems: Loading Database Dumps
 * Question 5
 *
 * Write the SQL statements to update the existing rows in the database with
 * values for the new columns:
 *
 * title            | director             | duration
 * ----             | ----                 | ----
 * Die Hard         | John McTiernan       | 132
 * Casablanca       | Michael Curtiz       | 102
 * The Conversation | Francis Ford Coppola | 113
 */
-- @block
-- @conn ls180
-- @label update columns
-- @label update Die Hard
UPDATE films
SET
  director = 'John McTiernan',
  duration = 132
WHERE
  title = 'Die Hard'
;

-- @label update Casablanca
UPDATE films
SET
  director = 'Michael Curtiz',
  duration = 102
WHERE
  title = 'Casablanca'
;

-- @label update The Conversation
UPDATE films
SET
  director = 'Francis Ford Coppola',
  duration = 113
WHERE
  title = 'The Conversation'
;

-- @label view all films
SELECT
  *
FROM
  films
;
