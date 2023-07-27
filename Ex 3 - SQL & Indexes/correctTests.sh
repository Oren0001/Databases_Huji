psql -h dbcourse public -c "drop table donors"
psql -h dbcourse public -c "create table donors(
	name varchar,
	cause varchar ,
	amount integer
);"
# test 1 --------------------------------------------------------------

psql -h dbcourse public -c "insert into donors values('Bob', 'ForStart', 100);"
psql -h dbcourse public -c "insert into donors values('Bob', 'Latet', 100);"
psql -h dbcourse public -c "insert into donors values('Tal', 'Latet', 100);"
psql -h dbcourse public -c "insert into donors values('Tal', 'ForStart', 100);"

echo "Test 1: need to give: \n Bob, Tal\n"
psql -h dbcourse public -c "\i correct.sql"
# end 1-----------------------------------------------------------------

psql -h dbcourse public -c "DELETE FROM donors"

# test 2 --------------------------------------------------------------
psql -h dbcourse public -c "insert into donors values('Bob', 'ForStart', 100);"
psql -h dbcourse public -c "insert into donors values('Bob', 'Latet', 100);"
psql -h dbcourse public -c "insert into donors values('Tal', 'stam', 100);"
psql -h dbcourse public -c "insert into donors values('Tal', 'ForStart', 100);"

echo -e "Test 2: need to give: \n Nothing at all \n"
psql -h dbcourse public -c "\i correct.sql"

# end 2-----------------------------------------------------------------

psql -h dbcourse public -c "DELETE FROM donors"

# test 3 --------------------------------------------------------------
psql -h dbcourse public -c "insert into donors values('Bob', 'ForStart', 100);"
psql -h dbcourse public -c "insert into donors values('Bob', 'Latet', 100);"
psql -h dbcourse public -c "insert into donors values('Tal', 'stam', 100);"
psql -h dbcourse public -c "insert into donors values('Tal', 'ForStart', 100);"

psql -h dbcourse public -c "insert into donors values('Miki', 'Stam', 100);"
psql -h dbcourse public -c "insert into donors values('Miki', 'Latet', 100);"
psql -h dbcourse public -c "insert into donors values('Orly', 'Stam', 100);"
psql -h dbcourse public -c "insert into donors values('Orly', 'Latet', 100);"

echo -e "Test 3: need to give: \n Miki, Orly"
psql -h dbcourse public -c "\i correct.sql"

# end 3-----------------------------------------------------------------

psql -h dbcourse public -c "DELETE FROM donors"

# test 4 --------------------------------------------------------------
psql -h dbcourse public -c "insert into donors values('Bob', 'ForStart', 100);"
psql -h dbcourse public -c "insert into donors values('Bob', 'Latet', 100);"
psql -h dbcourse public -c "insert into donors values('Tal', 'stam', 100);"
psql -h dbcourse public -c "insert into donors values('Tal', 'ForStart', 100);"

psql -h dbcourse public -c "insert into donors values('Miki', 'Stam', 100);"
psql -h dbcourse public -c "insert into donors values('Miki', 'Latet', 100);"
psql -h dbcourse public -c "insert into donors values('Orly', 'Stam', 100);"
psql -h dbcourse public -c "insert into donors values('Orly', 'Latet', 100);"


psql -h dbcourse public -c "insert into donors values('Momi', 'Stam', 100);"
psql -h dbcourse public -c "insert into donors values('Momi', 'Latet', 100);"
psql -h dbcourse public -c "insert into donors values('Momi', 'Latet1', 100);"
psql -h dbcourse public -c "insert into donors values('Revital', 'Stam', 100);"
psql -h dbcourse public -c "insert into donors values('Revital', 'Latet', 100);"
psql -h dbcourse public -c "insert into donors values('Revital', 'Latet1', 100);"

echo -e "Test 4:  need to give:\n Miki, Orly \n Momi, Revital \n"
psql -h dbcourse public -c "\i correct.sql"

# end 3-----------------------------------------------------------------

psql -h dbcourse public -c "DELETE FROM donors"


# test 4 ------------------------------------------------Thanks Yonatan

psql -h dbcourse public -c "insert into donors values('Bob', 'ForStart', 100);"
psql -h dbcourse public -c "insert into donors values('Alice', 'ForStart', 100);"
psql -h dbcourse public -c "insert into donors values('Alice', 'Jews for Kanye', 100);"
# end 3-----------------------------------------------------------------
echo -e "need to give return:\n Nothing at all \n"
psql -h dbcourse public -c "\i correct.sql"



psql -h dbcourse public -c "DROP TABLE donors;"
