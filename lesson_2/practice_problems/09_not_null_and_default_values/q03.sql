/**
 * LS180 Lesson 2
 * Assignment 9 Practice Problems: NOT NULL and Default Values
 * Question 3
 *
 * Write the SQL statements to create a table called `temperatures` to hold the
 * following data:
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
-- @label create temperatures
-- @label reset -- drop table if exists
DROP TABLE IF EXISTS temperatures
;

-- @label create temperatures table
CREATE TABLE temperatures ("date" date NOT NULL, low int NOT NULL, high int NOT NULL)
;
