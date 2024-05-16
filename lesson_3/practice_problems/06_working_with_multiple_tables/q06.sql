/**
 * LS180 Lesson 3
 * Assignment 6 Practice Problems: Working with Multiple Tables
 * Question 6
 *
 * Write a query that returns the user id, email address, and number of events
 * for all customers that have purchased tickets to three events.
 *
 *   id   |                email                 | count
 * -------+--------------------------------------+-------
 *   141  | isac.hayes@herzog.net                |     3
 *   326  | tatum.mraz@schinner.org              |     3
 *   624  | adelbert.yost@kleinwisozk.io         |     3
 *   1719 | lionel.feeney@metzquitzon.biz        |     3
 *   2058 | angela.ruecker@reichert.co           |     3
 *   3173 | audra.moore@beierlowe.biz            |     3
 *   4365 | ephraim.rath@rosenbaum.org           |     3
 *   6193 | gennaro.rath@mcdermott.co            |     3
 *   7175 | yolanda.hintz@binskshlerin.com       |     3
 *   7344 | amaya.goldner@stoltenberg.org        |     3
 *   7975 | ellen.swaniawski@schultzemmerich.net |     3
 *   9978 | dayana.kessler@dickinson.io          |     3
 * (12 rows)
 */
-- @block
-- @conn ls180_3_06
-- @label customers who've purchased for 3 events
SELECT
  c.id,
  c.email,
  count(DISTINCT t.event_id)
FROM
  customers c
  JOIN tickets t ON c.id = t.customer_id
GROUP BY
  c.id,
  c.email
HAVING
  count(DISTINCT t.event_id) = 3
ORDER BY
  c.id
;
