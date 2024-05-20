/**
 * LS180 Lesson 3
 * Assignment 13 Practice Problems: Converting a 1:M Relationship to a M:M Relationship
 * Question 7
 *
 * Write a SQL statement that determines how many films each director in the
 * database has directed. Sort the results by number of films (greatest first)
 * and then name (in alphabetical order).
 */
-- @block
-- @conn ls180_3_13
-- @label directors and count of films directed
SELECT
  d.name director,
  count(df.film_id) num_films_directed
FROM
  directors d
  JOIN directors_films df ON d.id = df.director_id
GROUP BY
  director
ORDER BY
  num_films_directed DESC,
  name
;
