/**
 * LS180 Lesson 3
 * Assignment 6 Practice Problems: Working with Multiple Tables
 * Question 7
 *
 * Write a query to print out a report of all tickets purchased by the customer
 * with the email address 'gennaro.rath@mcdermott.co'. The report should include
 * the event `name` and `starts_at` and the seat's section name, row, and seat
 * number.
 *
 *         event        |      starts_at      |    section    | row | seat
 * --------------------+---------------------+---------------+-----+------
 *   Kool-Aid Man       | 2016-06-14 20:00:00 | Lower Balcony | H   |   10
 *   Kool-Aid Man       | 2016-06-14 20:00:00 | Lower Balcony | H   |   11
 *   Green Husk Strange | 2016-02-28 18:00:00 | Orchestra     | O   |   14
 *   Green Husk Strange | 2016-02-28 18:00:00 | Orchestra     | O   |   15
 *   Green Husk Strange | 2016-02-28 18:00:00 | Orchestra     | O   |   16
 *   Ultra Archangel IX | 2016-05-23 18:00:00 | Upper Balcony | G   |    7
 *   Ultra Archangel IX | 2016-05-23 18:00:00 | Upper Balcony | G   |    8
 * (7 rows)
 */
-- @block
-- @conn ls180_3_06
-- @label ticket purchased by ...
SELECT
  e.name "event",
  e.starts_at,
  sect.name section,
  s.row,
  s.number seat
FROM
  customers c
  JOIN tickets t ON c.id = t.customer_id
  JOIN events e ON t.event_id = e.id
  JOIN seats s ON t.seat_id = s.id
  JOIN sections sect ON s.section_id = sect.id
WHERE
  c.email = 'gennaro.rath@mcdermott.co'
;
