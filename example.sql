DROP database if  exists example;
CREATE database example;
use example;
DROP table if exists users;
CREATE table users(
id int unsigned,
name varchar(255) 
);
