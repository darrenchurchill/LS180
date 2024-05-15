/**
 * LS180 Lesson 2
 * Assignment 10 Practice Problems: More Constraints
 * Question 17
 *
 * Is it possible to define a default value for a column that will be considered
 * invalid by a constraint? Create a table that tests this.
 */
-- @block
-- @conn ls180
-- @label test constraint with invalid default value
-- @label reset -- drop table if exists
DROP TABLE IF EXISTS test
;

-- @label create test table
CREATE TABLE test ("name" text NOT NULL DEFAULT NULL)
;

-- @label try to insert default value
INSERT INTO
  test ("name")
VALUES
  (DEFAULT)
;
