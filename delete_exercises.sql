USE codeup_test_db;

SELECT name, release_date FROM albums WHERE release_date > 1991;
SELECT name, genre FROM albums WHERE genre = 'disco';
SELECT name, artist FROM albums WHERE artist = 'Whitney Houston';