psql -h dbcourse public -c "\i create.sql"
cat bestsellers.csv | psql -h dbcourse public -c "copy bestsellers from STDIN DELIMITER ',' CSV HEADER"

psql -h dbcourse public -c "\i contradictions.sql"

psql -h dbcourse public -c "\i drop.sql"
