USE codeup_test_db;

# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE first_name LIKE 'M%'
# LIMIT 25 OFFSET 50;

CREATE TABLE authors (
                         id INT NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(100) NOT NULL,
                         last_name VARCHAR(100) NOT NULL,
                         PRIMARY KEY (id),
                         UNIQUE (first_name, last_name)
);

insert into authors (first_name, last_name) VALUES ('Austin', 'Varnon');
insert into authors (first_name, last_name) VALUES ('Aus', 'Var');
insert into authors (first_name, last_name) VALUES ('Bill', 'Bob');

select * from authors;

ALTER  table albums
    add unique (artist, name);
select * from albums;

insert into albums(artist, name, release_date, sales, genre)values ('Michael Jackson', 'Thriller', 2345, 34, 'Pop');

DESCRIBE authors;
DESCRIBE albums;