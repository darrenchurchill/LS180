/**
 * LS180 Lesson 3
 * Assignment 8 Practice Problems: One-to-Many Relationships
 * Question 5
 *
 * Write a SQL statement that attempt to insert a duplicate number for a new
 * contact but fails. What error is shown?
 */
-- @block
-- @conn ls180_3_08
-- @label test -- try to insert contact w/ duplicate "number"
INSERT INTO
  contacts (first_name, last_name, number)
VALUES
  ('test', 'test', '1112223333'),
  ('test', 'test', '1112223333')
;

/*
ERROR:  duplicate key value violates unique constraint "contacts_number_key"
DETAIL:  Key (number)=(1112223333) already exists.
*/
-- @label delete test data
DELETE FROM contacts
WHERE
  number = '1112223333'
;
