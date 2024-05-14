/**
 * LS180 Lesson 2
 * Assignment 6 Practice Problems: Working with a Single Table
 * Question 10
 *
 * Using the `menu_items` table, write a SQL query to determine which menu item
 * is the most profitable based on the cost of its ingredients, returning the
 * name of the item and its profit.
 *
 * item     | prep_time | ingredient_cost | sales | menu_price
 * ----     | ----      | ----            | ----  | ----
 * omelette | 10        | 1.50            | 182   | 7.99
 * tacos    | 5         | 2.00            | 254   | 8.99
 * oatmeal  | 1         | 0.50            | 79    | 5.99
 */
-- @block
-- @conn ls180
-- @label select most profitable menu item
SELECT
  item,
  menu_price - ingredient_cost AS per_item_profit
FROM
  menu_items
ORDER BY
  per_item_profit DESC
LIMIT
  1
;
