DROP DATABASE IF EXISTS puppies;
CREATE DATABASE puppies;

\c puppies;

CREATE TABLE pups (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  breed VARCHAR,
  age INTEGER,
  sex VARCHAR
);

INSERT INTO pups (name, breed, age, sex)
  VALUES ('Tyler', 'Retrieved', 3, 'M');

create table stock (
	stockid serial PRIMARY KEY,
	stockname varchar not null,
	industry varchar
);

-- create table history (
-- 	histid serial PRIMARY KEY,
-- 	stockid int references stock(stockid),
-- 	day date YYYY-MM-DD not null, 
-- 	open real,
-- 	high real,
-- 	low real,
-- 	close real,
-- 	adj_close real,
-- 	volume bigint
-- );	

-- create table user (
-- 	userid serial PRIMARY KEY,
-- 	username varchar not null,
-- 	password, varchar not null,
-- 	email varchar,
-- 	create_date date YYYY-MM-DD
-- );

-- create table log (
-- 	logid serial PRIMARY KEY,
-- 	userid int references user(userid),
-- 	stockid int references stock(stockid),
-- 	trans_qty bigint not null,
-- 	trans_date date YYYY-MM-DD not null
-- );

-- create table portfolio (
-- 	portid serial PRIMARY KEY,
-- 	userid int references user(userid),
-- 	stockid int references stock(stockid),
-- 	qty bigint,
-- 	profit real
-- );