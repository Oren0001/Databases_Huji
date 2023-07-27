#!/bin/bash

#1. Once you've saved the script file, you can make it executable by running the following command in a terminal:
#
# chmod +x script.sh
#
#This sets the execute permission for the file. You only need to run this command once.
#
#2. To run the script, navigate to the directory where the script is saved and execute the following command:
#
#./script.sh
#
#This should execute the script and run all the commands specified in the script.

# run python3 ex1.py
python3 ex1.py

# connect to psql and execute create.sql
psql -h dbcourse public -c "\i create.sql"

# load data into tables
cat country.csv | psql -h dbcourse public -c "copy country from STDIN DELIMITER ',' CSV HEADER"
cat university.csv | psql -h dbcourse public -c "copy university from STDIN DELIMITER ',' CSV HEADER"
cat closed.csv | psql -h dbcourse public -c "copy closed from STDIN DELIMITER ',' CSV HEADER"
cat acceptance_data.csv | psql -h dbcourse public -c "copy acceptance_data from STDIN DELIMITER ',' CSV HEADER"

# connect to psql and execute queries
psql -h dbcourse public -c "SELECT COUNT(*) FROM country;"
psql -h dbcourse public -c "SELECT COUNT(*) FROM university;"
psql -h dbcourse public -c "SELECT COUNT(*) FROM closed;"
psql -h dbcourse public -c "SELECT COUNT(*) FROM acceptance_data;"

# execute drop.sql
psql -h dbcourse public -c "\i drop.sql"

# disconnect from psql
psql -h dbcourse public -c "\q"
