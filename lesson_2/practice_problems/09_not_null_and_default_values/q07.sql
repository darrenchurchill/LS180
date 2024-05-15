/**
 * LS180 Lesson 2
 * Assignment 9 Practice Problems: NOT NULL and Default Values
 * Question 7
 *
 * Each day, it rains one millimeter for every degree the average temperature
 * goes above 35. Write a SQL statement to update the data in the table
 * `temperatures` to reflect this.
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
-- @label update rainfall rows
UPDATE temperatures
SET
  rainfall = greatest(((low + high) / 2.) - 35, 0)
;

-- @label view all temperatures
SELECT
  *
FROM
  temperatures
;
