# LS180 Lesson 3
# Assignment 13 Practice Problems: Converting a 1:M Relationship to a M:M Relationship
# Question 1
#
# Create database and insert data for this lesson assignment.
dropdb ls180_3_13
createdb ls180_3_13
psql ls180_3_13 < "$(dirname "$0")/films7.sql"
