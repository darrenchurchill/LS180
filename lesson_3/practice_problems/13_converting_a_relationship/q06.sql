/**
 * LS180 Lesson 3
 * Assignment 13 Practice Problems: Converting a 1:M Relationship to a M:M Relationship
 * Question 6
 *
 * Write SQL statements to insert data for the following films into the
 * database:
 *
 * Film                   | Year | Genre   | Duration | Directors
 * ----                   | ---- | ----    | ----     | ----
 * Fargo                  | 1996 | comedy  | 98       | Joel Coen
 * No Country for Old Men | 2007 | western | 122      | Joel Coen, Ethan Coen
 * Sin City               | 2005 | crime   | 124      | Frank Miller, Robert Rodriguez
 * Spy Kids               | 2001 | scifi   | 88       | Robert Rodriguez
 */
-- @block
-- @conn ls180_3_13
-- @label insert films and necessary directors
-- @label add temp films.directors column
ALTER TABLE films
ADD directors text
;

-- @label insert into films
INSERT INTO
  films (title, YEAR, genre, duration, directors)
VALUES
  ('Fargo', 1996, 'comedy', 98, 'Joel Coen'),
  (
    'No Country for Old Men',
    2007,
    'western',
    122,
    'Joel Coen, Ethan Coen'
  ),
  (
    'Sin City',
    2005,
    'crime',
    124,
    'Frank Miller, Robert Rodriguez'
  ),
  ('Spy Kids', 2001, 'scifi', 88, 'Robert Rodriguez')
;

-- @label view new films
SELECT
  *
FROM
  films
WHERE
  directors IS NOT NULL
;

-- @label view all directors from new films
SELECT
  string_to_table(directors, ', ') director
FROM
  films
WHERE
  directors IS NOT NULL
GROUP BY
  director
ORDER BY
  min(id)
;

-- @label insert directors from new films
INSERT INTO
  directors (name)
SELECT
  string_to_table(directors, ', ') director
FROM
  films
WHERE
  directors IS NOT NULL
GROUP BY
  director
ORDER BY
  min(id)
;

-- @label view new film ids and directors
SELECT
  film_id,
  d.id director_id
FROM
  (
    SELECT
      id film_id,
      string_to_table(directors, ', ') director
    FROM
      films
    WHERE
      directors IS NOT NULL
  ) AS f
  JOIN directors d ON f.director = d.name
;

-- @label insert new film ids and director_ids
INSERT INTO
  directors_films (film_id, director_id)
SELECT
  film_id,
  d.id director_id
FROM
  (
    SELECT
      id film_id,
      string_to_table(directors, ', ') director
    FROM
      films
    WHERE
      directors IS NOT NULL
  ) AS f
  JOIN directors d ON f.director = d.name
;

-- @label drop temp films.directors column
ALTER TABLE films
DROP directors
;

-- @label view all films and directors
SELECT
  f.*,
  string_agg(d.name, ', ') directors
FROM
  films f
  JOIN directors_films df ON f.id = df.film_id
  JOIN directors d ON df.director_id = d.id
GROUP BY
  f.id,
  f.title,
  f.year,
  f.genre,
  f.duration
ORDER BY
  f.id
;
