# LS180 Lesson 3
# Assignment 6 Practice Problems: Working with Multiple Tables
# Question 1
dropdb ls180_3_06
createdb ls180_3_06
psql ls180_3_06 < "$(dirname "$0")/theater_full.sql"
