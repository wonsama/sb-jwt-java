CREATE TABLE user (
  id SERIAL PRIMARY KEY,-- Primary key ID
  username varchar(100) NOT NULL,-- user name
  password varchar(100) NOT NULL,-- password
  realname varchar(100) NOT NULL,-- Real name
  create_time timestamp NOT NULL,-- Creation time
  PRIMARY KEY (`id`)
  UNIQUE(username)
)