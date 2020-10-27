-- DROP DATABASE IF EXISTS codeup_test_db;
-- CREATE DATABASE codeup_test_db;
USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(40),
    name VARCHAR(60),
    release_date INT,
    sales DOUBLE,
    genre VARCHAR(40),
    PRIMARY KEY (id)
);
DESCRIBE albums;