use codeup_test_db;
CREATE TABLE albums (

  id INT UNSIGNED AUTO_INCREMENT,
  artist VARCHAR(50),
  name VARCHAR(50),
  release_data INT,
  sales FLOAT,
  genre CHAR(10),
  PRIMARY KEY (id)
);