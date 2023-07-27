# connect to psql and execute create.sql
psql -h dbcourse public -c "\i create.sql"

# load data into tables
cat members.csv | psql -h dbcourse public -c "copy members from STDIN DELIMITER ',' CSV HEADER"
cat knessets.csv | psql -h dbcourse public -c "copy knessets from STDIN DELIMITER ',' CSV HEADER"
cat memberInKnesset.csv | psql -h dbcourse public -c "copy memberInKnesset from STDIN DELIMITER ',' CSV HEADER"

#run queries
psql -h dbcourse public -c "\i q1.sql"
psql -h dbcourse public -c "\i q2.sql" > q2_out
psql -h dbcourse public -c "\i q3.sql"
psql -h dbcourse public -c "\i q4.sql"
psql -h dbcourse public -c "\i q5.sql"
psql -h dbcourse public -c "\i q6.sql"
psql -h dbcourse public -c "\i q7.sql"

# execute drop.sql
psql -h dbcourse public -c "\i drop.sql"

# disconnect from psql
psql -h dbcourse public -c "\q"
