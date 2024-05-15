/**
 * LS180 Lesson 2
 * Assignment 9 Practice Problems: NOT NULL and Default Values
 * Question 6
 *
 * Write a SQL statement to add a new column, `rainfall`, to the `temperatures`
 * table. It should store millimeters of rain as integers and have a default
 * value of `0`.
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
-- @label add rainfall column
ALTER TABLE temperatures
ADD rainfall int DEFAULT 0
;
