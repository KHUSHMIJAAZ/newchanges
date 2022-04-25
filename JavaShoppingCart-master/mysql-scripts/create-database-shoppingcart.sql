CREATE DATABASE `shoppingcart` 

CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `balance` int NOT NULL DEFAULT '0' ,
  PRIMARY KEY (`username`)
) 

CREATE TABLE `inventory` (
  `username` varchar(45) NOT NULL,
  `item1` int NOT NULL ,
  `item2` int NOT NULL ,
  `item3` int NOT NULL ,
  `item4` int NOT NULL ,
  `item5` int NOT NULL ,
  `item6` int NOT NULL ,
  PRIMARY KEY (`username`)
) 


CREATE TABLE `admin` (
  `userid` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  
  PRIMARY KEY (`userid`)
) 

INSERT INTO `admin` (`userid`, `pwd`)
VALUES ('sam', '123');