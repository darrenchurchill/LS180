/**
 * LS180 Lesson 3
 * Assignment 8 Practice Problems: One-to-Many Relationships
 * Question 4
 *
 * Add a constraint to `contacts` that prevents a duplicate value being added in
 * the column `number`.
 */
-- @block
-- @conn ls180_3_08
-- @label add constraint
ALTER TABLE contacts
ADD UNIQUE (number)
;
