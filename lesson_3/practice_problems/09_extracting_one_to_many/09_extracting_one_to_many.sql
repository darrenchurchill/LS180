/**
 * LS180 Lesson 3
 * Assignment 9 Extracting a 1:M Relationship from Existing Data.
 *
 * Loosely follow the procedure in 3.9, without hard-coding any INSERT values.
 */
-- @block
-- @conn ls180_3_09
-- @label separate films into films and directors
-- @label create directors table
CREATE TABLE directors (
  id serial PRIMARY KEY,
  name text NOT NULL CHECK (
    length(name) >= 1
    AND position(' ' IN name) > 0
  )
)
;

/*
Create temp sequence to keep directors in their `films` table order when they're
inserted into `directors`.
*/
-- @label create temp sequence
CREATE SEQUENCE temp_sequence
;

-- @label reset temp_sequence
SELECT
  setval('temp_sequence', 1, FALSE)
;

-- @label preview directors to be inserted
SELECT
  director
FROM
  (
    SELECT
      nextval('temp_sequence') AS temp_id,
      director
    FROM
      films
  )
GROUP BY
  director
ORDER BY
  min(temp_id)
;

-- @label insert directors
INSERT INTO
  directors (name)
SELECT
  director
FROM
  (
    SELECT
      nextval('temp_sequence') AS temp_id,
      director
    FROM
      films
  )
GROUP BY
  director
ORDER BY
  min(temp_id)
;

-- @label drop temp sequence
DROP SEQUENCE temp_sequence
;

-- @label view all directors
SELECT
  *
FROM
  directors
;

-- @block
-- @conn ls180_3_09
-- @label add director_id
-- @label add director_id column to films
ALTER TABLE films
ADD COLUMN director_id int REFERENCES directors (id)
;

-- @label update director_id in films
UPDATE films
SET
  director_id = (
    SELECT
      id
    FROM
      directors
    WHERE
      director = directors.name
  )
;

-- @label look for errors -- should be empty
SELECT
  d.name directors_name,
  f.director films_director
FROM
  films f
  JOIN directors d ON f.director_id = d.id
WHERE
  d.name <> f.director
;

-- @label add NOT NULL constraint to films.director_id
ALTER TABLE films
ALTER COLUMN director_id
SET NOT NULL
;

-- @label drop films.director
ALTER TABLE films
DROP COLUMN director
;

-- @label view data in original form
SELECT
  f.title,
  f.year,
  d.name director,
  f.duration
FROM
  films f
  INNER JOIN directors d ON d.id = f.director_id
;
