/**
 * LS180 Lesson 2
 * Assignment 9 Practice Problems: NOT NULL and Default Values
 * Question 8
 *
 * A decision has been made to store rainfall in inches. Write the SQL
 * statements required to modify the `rainfall` column to reflect these new
 * requirements.
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
-- @label update rainfall
-- @label update rainfall rows to inches
ALTER TABLE temperatures
ALTER rainfall TYPE decimal(5, 3) USING rainfall / 25.4
;

-- @label view all temperatures
SELECT
  *
FROM
  temperatures
;
