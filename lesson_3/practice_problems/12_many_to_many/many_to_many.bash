# LS180 Lesson 3
# Assignment 12 Many-to-Many Relationships
#
# Create database and insert data for this lesson assignment.
dropdb ls180_3_12
createdb ls180_3_12
psql ls180_3_12 < "$(dirname "$0")/many_to_many.sql"
