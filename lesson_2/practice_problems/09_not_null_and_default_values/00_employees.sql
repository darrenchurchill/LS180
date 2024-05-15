/**
 * LS180 Lesson 2
 * Assignment 9 NOT NULL and Default Values
 *
 * This file contains the statements from assignment 9, to make completing the
 * practice problems simpler.
 */
-- @conn ls180
CREATE TABLE employees (
  first_name character varying(100),
  last_name character varying(100),
  department character varying(100),
  vacation_remaining integer
)
;

INSERT INTO
  employees
VALUES
  ('Leonardo', 'Ferreira', 'finance', 14)
;

INSERT INTO
  employees
VALUES
  ('Sara', 'Mikaelsen', 'operations', 14)
;

INSERT INTO
  employees
VALUES
  ('Lian', 'Ma', 'marketing', 13)
;

SELECT
  *
FROM
  employees
;

INSERT INTO
  employees (first_name, last_name)
VALUES
  ('Haiden', 'Smith')
;

DELETE FROM employees
WHERE
  vacation_remaining IS NULL
;

ALTER TABLE employees
ALTER COLUMN vacation_remaining
SET NOT NULL
;

INSERT INTO
  employees (first_name, last_name, vacation_remaining)
VALUES
  ('Haiden', 'Smith', 0)
;

ALTER TABLE employees
ALTER COLUMN vacation_remaining
SET DEFAULT 0
;

SELECT
  *
FROM
  employees
;
