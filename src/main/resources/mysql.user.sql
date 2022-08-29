CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,-- Primary key ID
  `username` varchar(100) DEFAULT NULL,-- user name
  `password` varchar(100) DEFAULT NULL,-- password
  `realname` varchar(100) DEFAULT NULL,-- Real name
  `create_time` datetime NOT NULL,-- Creation time
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8