/**
 * LS180 Lesson 2
 * Assignment 6 Practice Problems: Working with a Single Table
 * Question 5
 *
 * Write SQL statements to insert the data below into `birds`.
 *
 * name              | length | wingspan | family       | extinct
 * ----              | ----   | ----     | ----         | ----
 * Spotted Towhee    | 21.6   | 26.7     | Emberizidae  | f
 * American Robin    | 25.5   | 36.0     | Turdidae     | f
 * Greater Koa Finch | 19.0   | 24.0     | Fringillidae | t
 * Carolina Parakeet | 33.0   | 55.8     | Psittacidae  | t
 * Common Kestrel    | 35.5   | 73.5     | Falconidae   | f
 */
-- @block
-- @conn ls180
-- @label setup birds table
-- @label reset -- delete from birds
DELETE FROM birds
;

-- @label insert data into birds
INSERT INTO
  birds (name, LENGTH, wingspan, FAMILY, extinct)
VALUES
  ('Spotted Towhee', 21.6, 26.7, 'Emberizidae', FALSE),
  ('American Robin', 25.5, 36.0, 'Turdidae', FALSE),
  ('Greater Koa Finch', 19.0, 24.0, 'Fringillidae', TRUE),
  ('Carolina Parakeet', 33.0, 55.8, 'Psittacidae', TRUE),
  ('Common Kestrel', 35.5, 73.5, 'Falconidae', FALSE)
;

-- @label view birds data
SELECT
  *
FROM
  birds
;
