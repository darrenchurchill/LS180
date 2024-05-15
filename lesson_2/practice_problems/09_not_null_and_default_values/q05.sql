/**
 * LS180 Lesson 2
 * Assignment 9 Practice Problems: NOT NULL and Default Values
 * Question 5
 *
 * Write a SQL statement to determine the average (mean) temperature for each
 * day from March 2, 2016 through March 8, 2016. Make sure to round each average
 * value to one decimal place.
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
-- @label avg temperatures 3/2-3/8
SELECT
  date,
  round((low + high) / 2., 1) avg_temp
FROM
  temperatures
WHERE
  date BETWEEN '3-2-2016' AND '3-8-2016'
;
