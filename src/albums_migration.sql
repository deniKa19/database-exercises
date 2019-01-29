create database if not exists codeup_test_db;
use codeup_test_db;

CREATE TABLE albums (

  id INT UNSIGNED not null AUTO_INCREMENT,
  artist VARCHAR(255) not null,
  name VARCHAR(225),
  release_data INT unsigned not null,
  sales float ,
  genre VARCHAR(225),
  PRIMARY KEY (id)
);

describe albums;