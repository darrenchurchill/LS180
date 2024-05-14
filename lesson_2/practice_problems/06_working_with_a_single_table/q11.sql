/**
 * LS180 Lesson 2
 * Assignment 6 Practice Problems: Working with a Single Table
 * Question 11
 *
 * Write a SQL query to determine how profitable each item on the menu is based
 * on the amount of time it takes to prepare one item. Assume that whoever is
 * preparing the food is being paid $13 an hour. List the most profitable items
 * first. Keep in mind that `prep_time` is represented in minutes and
 * `ingredient_cost` and `menu_price` are both in dollars and cents:
 *
 * item     | prep_time | ingredient_cost | sales | menu_price
 * ----     | ----      | ----            | ----  | ----
 * omelette | 10        | 1.50            | 182   | 7.99
 * tacos    | 5         | 2.00            | 254   | 8.99
 * oatmeal  | 1         | 0.50            | 79    | 5.99
 */
-- @block
-- @conn ls180
-- @label view item profit
SELECT
  item,
  menu_price,
  ingredient_cost,
  round(labor, 2) labor,
  round(menu_price - ingredient_cost - labor, 2) per_item_profit
FROM
  (
    SELECT
      *,
      prep_time / 60. * 13 labor
    FROM
      menu_items
  )
ORDER BY
  per_item_profit DESC
;
