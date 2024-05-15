/**
 * LS180 Lesson 2
 * Assignment 9 Practice Problems: NOT NULL and Default Values
 * Question 2
 *
 * Set the default value of the `department` column to "unassigned". Then set
 * the value of the `department` column to "unassigned" for any rows where it
 * has a NULL value. Finally, add a NOT NULL constraint to the `department`
 * column.
 */
-- @block
-- @conn ls180
-- @label update employees table
-- @label default department is "unassigned"
ALTER TABLE employees
ALTER department
SET DEFAULT 'unassigned'
;

-- @label update NULL department values
UPDATE employees
SET
  department = DEFAULT
WHERE
  department IS NULL
;

-- @label add constraint department NOT NULL
ALTER TABLE employees
ALTER department
SET NOT NULL
;
