# LS180 Lesson 3
# Assignment 7 Practice Problems: Using Foreign Keys
# Question 1
dropdb ls180_3_07
createdb ls180_3_07
psql ls180_3_07 < "$(dirname "$0")/orders_products1.sql"
