/**
 * LS180 Lesson 2
 * Assignment 12 Practice Problems: GROUP BY and Aggregate Functions
 * Question 2
 *
 * Write SQL statements that will insert the following films into the database:
 *
 * title           | year | genre     | director          | duration
 * ----            | ---- | ----      | ----              | ----
 * Wayne's World   | 1992 | comedy    | Penelope Spheeris | 95
 * Bourne Identity | 2002 | espionage | Doug Liman        | 118
 */
-- @block
-- @conn ls180
-- @label insert data into films
INSERT INTO
  films (title, "year", genre, director, duration)
VALUES
  ('Wayne''s World', 1992, 'comedy', 'Penelope Spheeris', 95),
  ('Bourne Identity', 2002, 'espionage', 'Doug Liman', 118)
;

-- @label view all films
SELECT
  *
FROM
  films
;
