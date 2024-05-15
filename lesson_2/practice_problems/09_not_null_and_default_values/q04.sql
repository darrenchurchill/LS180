/**
 * LS180 Lesson 2
 * Assignment 9 Practice Problems: NOT NULL and Default Values
 * Question 4
 *
 * Write the SQL statements to insert the data below into `temperatures`:
 *
 *    date    | low | high
 * -----------+-----+------
 * 2016-03-01 | 34  | 43
 * 2016-03-02 | 32  | 44
 * 2016-03-03 | 31  | 47
 * 2016-03-04 | 33  | 42
 * 2016-03-05 | 39  | 46
 * 2016-03-06 | 32  | 43
 * 2016-03-07 | 29  | 32
 * 2016-03-08 | 23  | 31
 * 2016-03-09 | 17  | 28
 */
-- @block
-- @conn ls180
-- @label insert data
-- @label reset -- drop table if exists
DELETE FROM temperatures
;

-- @label insert data into temperatures
INSERT INTO
  temperatures ("date", low, high)
VALUES
  ('2016-03-01', 34, 43),
  ('2016-03-02', 32, 44),
  ('2016-03-03', 31, 47),
  ('2016-03-04', 33, 42),
  ('2016-03-05', 39, 46),
  ('2016-03-06', 32, 43),
  ('2016-03-07', 29, 32),
  ('2016-03-08', 23, 31),
  ('2016-03-09', 17, 28)
;

-- @label view all temperatures
SELECT
  *
FROM
  temperatures
;
