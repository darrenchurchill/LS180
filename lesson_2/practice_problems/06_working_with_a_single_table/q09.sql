/**
 * LS180 Lesson 2
 * Assignment 6 Practice Problems: Working with a Single Table
 * Question 9
 *
 * Write SQL statements to insert the data below into `menu_items`:
 *
 * item     | prep_time | ingredient_cost | sales | menu_price
 * ----     | ----      | ----            | ----  | ----
 * omelette | 10        | 1.50            | 182   | 7.99
 * tacos    | 5         | 2.00            | 254   | 8.99
 * oatmeal  | 1         | 0.50            | 79    | 5.99
 */
-- @block
-- @conn ls180
-- @label insert data
-- @label reset -- delete from menu_items
DELETE FROM menu_items
;

-- @label insert data into menu_items
INSERT INTO
  menu_items (item, prep_time, ingredient_cost, sales, menu_price)
VALUES
  ('omelette', 10, 1.50, 182, 7.99),
  ('tacos', 5, 2.00, 254, 8.99),
  ('oatmeal', 1, 0.50, 79, 5.99)
;

-- @label view menu_items
SELECT
  *
FROM
  menu_items
;
