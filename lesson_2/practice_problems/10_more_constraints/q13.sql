/**
 * LS180 Lesson 2
 * Assignment 10 Practice Problems: More Constraints
 * Question 13
 *
 * Add a constraint to the `films` that requires all rows to have a value for
 * `director` that is at least 3 characters long and contains at least 1 space
 * character.
 */
-- @block
-- @conn ls180
-- @label director constraints
-- @label reset -- drop director constraints
ALTER TABLE films
DROP CONSTRAINT IF EXISTS films_director_length_check,
DROP CONSTRAINT IF EXISTS films_director_one_space_check
;

-- @label add director constraints
ALTER TABLE films
ADD CONSTRAINT films_director_length_check CHECK (length(director) >= 3),
ADD CONSTRAINT films_director_one_space_check CHECK (regexp_like (director, '^\S.* .*\S$'))
;
