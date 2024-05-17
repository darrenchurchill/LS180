/**
 * LS180 Lesson 3
 * Assignment 8 Practice Problems: One-to-Many Relationships
 * Question 3
 *
 * Write SQL statements to add the following call data to the database:
 *
 * when                | duration | first_name | last_name | number
 * ----                | ----     | ----       | ----      | ----
 * 2016-01-17 11:52:00 | 175      | Merve      | Elk       | 6343511126
 * 2016-01-18 21:22:00 | 79       | Sawa       | Fyodorov  | 6125594874
 */
-- @block
-- @conn ls180_3_08
-- @label insert data
-- @label is either contact in database?
SELECT
  *
FROM
  (
    SELECT
      id,
      first_name || ' ' || last_name AS full_name
    FROM
      contacts
  )
WHERE
  full_name = 'Merve Elk'
  OR full_name = 'Sawa Fyodorov'
;

/* No, neither contact is in contacts */
-- @label insert contacts
INSERT INTO
  contacts (first_name, last_name, "number")
VALUES
  ('Merve', 'Elk', '6343511126'),
  ('Sawa', 'Fyodorov', '6125594874')
;

-- @label view contact ids
SELECT
  *
FROM
  (
    SELECT
      id,
      first_name || ' ' || last_name AS full_name
    FROM
      contacts
  )
WHERE
  full_name = 'Merve Elk'
  OR full_name = 'Sawa Fyodorov'
;

-- @label insert first call
INSERT INTO
  calls ("when", duration, contact_id)
VALUES
  ('2016-01-17 11:52:00', 175, 26)
;

-- @label insert second call
INSERT INTO
  calls ("when", duration, contact_id)
VALUES
  ('2016-01-18 21:22:00', 79, 27)
;

-- @label view all calls
SELECT
  *
FROM
  calls
;
