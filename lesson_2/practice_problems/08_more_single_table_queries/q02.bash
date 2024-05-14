# LS180 Lesson 2
# Assignment 8 Practice Problems: More Single Table Queries
# Question 2
#
# Load the `residents_with_data.sql` file into the `residents` db.
# You can ignore the "relation does not exist" errors. They're from ommitting
# the `IF EXISTS` condition in some `DROP` statements.
psql residents < "$(dirname "$0")/residents_with_data.sql"
