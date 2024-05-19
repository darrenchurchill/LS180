/**
 * LS180 Lesson 3
 * Assignment 12 Practice Problems: Many-to-Many Relationships
 * Question 3
 *
 * Write SQL statements to insert the following new books into the database.
 * What do you need to do to ensure this data fits into the database?
 *
 * Author                        | Title                                      | Categories
 * ----                          | ----                                       | ----
 * Lynn Sherr                    | Sally Ride: America's First Woman in Space | Biography, Nonfiction, Space Exploration
 * Charlotte Brontë              | Jane Eyre                                  | Fiction, Classics
 * Meeru Dhalwala and Vikram Vij | Vij's: Elegant and Inspired Indian Cuisine | Cookbook, Nonfiction, South Asia
 */
-- @block
-- @conn ls180_3_12
-- @label insert data
-- @label alter title type
ALTER TABLE books
ALTER title TYPE text
;

-- @label insert books
INSERT INTO
  books (author, title)
VALUES
  (
    'Lynn Sherr',
    'Sally Ride: America''s First Woman in Space'
  ),
  ('Charlotte Brontë', 'Jane Eyre'),
  (
    'Meeru Dhalwala and Vikram Vij',
    'Vij''s: Elegant and Inspired Indian Cuisine'
  )
;

-- @label add categories.name UNIQUE constraint
ALTER TABLE categories
ADD UNIQUE ("name")
;

-- @label insert needed categories
INSERT INTO
  categories ("name")
VALUES
  ('Biography'),
  ('Nonfiction'),
  ('Space Exploration'),
  ('Fiction'),
  ('Classics'),
  ('Cookbook'),
  ('Nonfiction'),
  ('South Asia')
ON CONFLICT DO NOTHING
;

-- @label preview books_categories insertion data
SELECT
  b.title,
  b.id book_id,
  c.id category_id,
  c.name category
FROM
  books b
  CROSS JOIN categories c
WHERE
  (
    b.title = 'Sally Ride: America''s First Woman in Space'
    AND c."name" IN ('Biography', 'Nonfiction', 'Space Exploration')
  )
  OR (
    b.title = 'Jane Eyre'
    AND c."name" IN ('Fiction', 'Classics')
  )
  OR (
    b.title = 'Vij''s: Elegant and Inspired Indian Cuisine'
    AND c."name" IN ('Cookbook', 'Nonfiction', 'South Asia')
  )
ORDER BY
  b.id,
  c.id
;

-- @label add categories to books
INSERT INTO
  books_categories (book_id, category_id)
SELECT
  b.id book_id,
  c.id category_id
FROM
  books b
  CROSS JOIN categories c
WHERE
  (
    b.title = 'Sally Ride: America''s First Woman in Space'
    AND c."name" IN ('Biography', 'Nonfiction', 'Space Exploration')
  )
  OR (
    b.title = 'Jane Eyre'
    AND c."name" IN ('Fiction', 'Classics')
  )
  OR (
    b.title = 'Vij''s: Elegant and Inspired Indian Cuisine'
    AND c."name" IN ('Cookbook', 'Nonfiction', 'South Asia')
  )
ORDER BY
  b.id,
  c.id
;

-- @label view all books and their categories
SELECT
  b.author,
  b.title,
  string_agg(c.name, ', ') categories
FROM
  books b
  JOIN books_categories bc ON b.id = bc.book_id
  JOIN categories c ON bc.category_id = c.id
GROUP BY
  b.author,
  b.title
;
