/**
 * LS180 Lesson 3
 * Assignment 12 Practice Problems: Many-to-Many Relationships
 * Question 2
 *
 * Write a SQL statement that will return the following result:
 *
 *  id |     author      |           categories
 * ----+-----------------+--------------------------------
 *   1 | Charles Dickens | Fiction, Classics
 *   2 | J. K. Rowling   | Fiction, Fantasy
 *   3 | Walter Isaacson | Nonfiction, Biography, Physics
 * (3 rows)
 */
-- @block
-- @conn ls180_3_12
-- @label view data
-- @label join tables
SELECT
  b.id,
  b.author,
  string_agg(c.name, ', ') categories
FROM
  books b
  JOIN books_categories bc ON b.id = bc.book_id
  JOIN categories c ON bc.category_id = c.id
GROUP BY
  b.id,
  b.author
ORDER BY
  b.id
;
