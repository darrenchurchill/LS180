/**
 * LS180 Lesson 3
 * Assignment 6 Practice Problems: Working with Multiple Tables
 * Question 5
 *
 * Write a query that returns the name of each event and how many tickets were
 * sold for it, in order from most popular to least popular.
 *
 *             name            | popularity
 * ----------------------------+------------
 *   A-Bomb                     |        555
 *   Captain Deadshot Wolf      |        541
 *   Illustrious Firestorm      |        521
 *   Siren I                    |        457
 *   Kool-Aid Man               |        439
 *   Green Husk Strange         |        414
 *   Ultra Archangel IX         |        359
 *   Red Hope Summers the Fated |        307
 *   Magnificent Stardust       |        134
 *   Red Magus                  |         56
 * (10 rows)
 */
-- @block
-- @conn ls180_3_06
-- @label events and # tickets sold
SELECT
  e.name,
  count(e.name) AS popularity
FROM
  events e
  LEFT OUTER JOIN tickets t ON e.id = t.event_id
GROUP BY
  e.name
ORDER BY
  popularity DESC
;
