/**
 * LS180 Lesson 2
 * Assignment 6 Practice Problems: Working with a Single Table
 * Question 8
 *
 * Write a SQL statement that will create the table below, `menu_items`:
 *
 * item     | prep_time | ingredient_cost | sales | menu_price
 * ----     | ----      | ----            | ----  | ----
 * omelette | 10        | 1.50            | 182   | 7.99
 * tacos    | 5         | 2.00            | 254   | 8.99
 * oatmeal  | 1         | 0.50            | 79    | 5.99
 */
-- @block
-- @conn ls180
-- @label setup menu_items table
-- @label reset -- drop table if exists
DROP TABLE IF EXISTS menu_items
;

-- @label create menu_items table
CREATE TABLE menu_items (
  item text,
  prep_time int,
  ingredient_cost decimal(4, 2),
  sales int,
  menu_price decimal(4, 2)
)
;
