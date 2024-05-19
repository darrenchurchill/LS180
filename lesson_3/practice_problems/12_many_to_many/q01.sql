/**
 * LS180 Lesson 3
 * Assignment 12 Practice Problems: Many-to-Many Relationships
 * Question 1
 *
 * The `books_categories` table from this database was created with foreign keys
 * that don't have the `NOT NULL` and `ON DELETE CASCADE` constraints. Go ahead
 * and add them now.
 */
-- @block
-- @conn ls180_3_12
-- @label alter books_categories
-- @label add constraints, re-add foreign keys
ALTER TABLE books_categories
ALTER book_id
SET NOT NULL,
DROP CONSTRAINT books_categories_book_id_fkey,
ADD FOREIGN KEY (book_id) REFERENCES books (id) ON DELETE CASCADE,
ALTER category_id
SET NOT NULL,
DROP CONSTRAINT books_categories_category_id_fkey,
ADD FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE
;
