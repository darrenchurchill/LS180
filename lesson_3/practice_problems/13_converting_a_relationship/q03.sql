/**
 * LS180 Lesson 3
 * Assignment 13 Practice Problems: Converting a 1:M Relationship to a M:M Relationship
 * Question 3
 *
 * Write the SQL statements needed to insert data into the new join table to
 * represent the existing one-to-many relationships.
 */
-- @block
-- @conn ls180_3_13
-- @label insert into directors_films
-- @label show all directors
SELECT
  *
FROM
  directors
;

-- @label show all films
SELECT
  *
FROM
  films
;

-- @label preview insertion data
SELECT
  id film_id,
  director_id
FROM
  films
ORDER BY
  film_id
;

-- @label insert into directors_films
INSERT INTO
  directors_films (film_id, director_id)
SELECT
  id film_id,
  director_id
FROM
  films
ORDER BY
  film_id
;

-- @label view all directors_films
SELECT
  *
FROM
  directors_films
;
