# LS180 Lesson 3
# Assignment 9 Extracting a 1:M Relationship from Existing Data.
#
# Create database and insert data for this lesson assignment.
dropdb ls180_3_09
createdb ls180_3_09
psql ls180_3_09 < "$(dirname "$0")/films3.5.sql"
