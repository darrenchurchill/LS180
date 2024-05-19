/**
 * LS180 Lesson 3
 * Assignment 13 Practice Problems: Converting a 1:M Relationship to a M:M Relationship
 * Question 2
 *
 * Write the SQL statement needed to create a join table that will allow a film
 * to have multiple directors, and directors to have multiple films. Include an
 * `id` column in this table, and add foreign key constraints to the other
 * columns.
 */
-- @block
-- @conn ls180_3_13
-- @label allow films:directors M:M
-- @label add directors_films table
/*
The convention for naming join tables as a concatenation of 2+ table names is
to list them alphabetically.
*/
CREATE TABLE directors_films (
  id serial PRIMARY KEY,
  film_id int NOT NULL REFERENCES films (id) ON DELETE CASCADE,
  director_id int NOT NULL REFERENCES directors (id) ON DELETE CASCADE,
  UNIQUE (film_id, director_id)
)
;
