/**
 * LS180 Lesson 2
 * Assignment 6 Practice Problems: Working with a Single Table
 * Question 1
 *
 * Write a SQL statement that will create the following table, `people`.
 *
 * name      | age  | occupation
 * ----      | ---- | ----
 * Abby      | 34   | biologist
 * Mu'nisah  | 26   | NULL
 * Mirabelle | 40   | contractor
 */
-- @block
-- @conn ls180
-- @label setup people table
-- @label reset -- drop table if exists
DROP TABLE IF EXISTS people
;

-- @label create people table
CREATE TABLE people (name text, age int, occupation text)
;
