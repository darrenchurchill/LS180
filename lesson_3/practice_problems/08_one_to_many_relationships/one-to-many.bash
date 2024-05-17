# LS180 Lesson 3
# Assignment 8 One-to-Many Relationships
#
# Create database and insert data for this lesson assignment.
dropdb ls180_3_08
createdb ls180_3_08
psql ls180_3_08 < "$(dirname "$0")/one-to-many.sql"
