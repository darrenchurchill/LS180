/**
 * LS180 Lesson 3
 * Assignment 12 Practice Problems: Many-to-Many Relationships
 * Question 5
 *
 * Write a SQL statement that will return the following result:
 *
 *       name        | book_count |                                 book_titles
 * ------------------+------------+-----------------------------------------------------------------------------
 * Biography         |          2 | Einstein: His Life and Universe, Sally Ride: America's First Woman in Space
 * Classics          |          2 | A Tale of Two Cities, Jane Eyre
 * Cookbook          |          1 | Vij's: Elegant and Inspired Indian Cuisine
 * Fantasy           |          1 | Harry Potter
 * Fiction           |          3 | Jane Eyre, Harry Potter, A Tale of Two Cities
 * Nonfiction        |          3 | Sally Ride: America's First Woman in Space, Einstein: His Life and Universe, Vij's: Elegant and Inspired Indian Cuisine
 * Physics           |          1 | Einstein: His Life and Universe
 * South Asia        |          1 | Vij's: Elegant and Inspired Indian Cuisine
 * Space Exploration |          1 | Sally Ride: America's First Woman in Space
 */
-- @block
-- @conn ls180_3_12
-- @label view categories, count and titles
SELECT
  c.name,
  count(b.id) book_count,
  string_agg(title, ', ') book_titles
FROM
  books b
  JOIN books_categories bc ON b.id = bc.book_id
  JOIN categories c ON bc.category_id = c.id
GROUP BY
  c.name
ORDER BY
  c.name
;
