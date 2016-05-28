-- create database real_estate_management;
USE real_estate_management;

DROP TABLE IF EXISTS `users`;

CREATE TABLE IF NOT EXISTS `users` (
  `email`      VARCHAR(60) NOT NULL,
  `password`   VARCHAR(20) NOT NULL,
  `first_name` VARCHAR(45) NULL DEFAULT NULL,
  `last_name`  VARCHAR(45) NULL DEFAULT NULL,
  `street_nr`  VARCHAR(10) NULL DEFAULT NULL,
  `street`     VARCHAR(50) NULL DEFAULT NULL,
  `city`       VARCHAR(20) NULL DEFAULT NULL,
  `district`   VARCHAR(20) NULL DEFAULT NULL,
  `country`    VARCHAR(25) NULL DEFAULT NULL,
  `phone`      VARCHAR(14) NULL DEFAULT NULL,
  `role`       VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `offers`;

CREATE TABLE IF NOT EXISTS `offers` (
  `type`        VARCHAR(30) NULL DEFAULT NULL,
  `idFeatures`  INT,
  `idAddresses` INT,
  `price`       VARCHAR(30) NULL DEFAULT NULL,
  `emailUser`   VARCHAR(60) NULL DEFAULT NULL,
  `idOffers`    INT PRIMARY KEY  AUTO_INCREMENT
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `addresses`;

CREATE TABLE IF NOT EXISTS `addresses` (
  `street`      VARCHAR(50),
  `streetNo`    VARCHAR(10),
  `city`        VARCHAR(20) NULL DEFAULT NULL,
  `district`    VARCHAR(20) NULL DEFAULT NULL,
  `country`     VARCHAR(25) NULL DEFAULT NULL,
  `area`        VARCHAR(25) NULL DEFAULT NULL,
  `idAddresses` INT              AUTO_INCREMENT PRIMARY KEY
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `features`;

CREATE TABLE IF NOT EXISTS `features` (
  `propetyType`   VARCHAR(25) NULL DEFAULT NULL,
  `devision`      VARCHAR(25) NULL DEFAULT NULL,
  `confort`       VARCHAR(25) NULL DEFAULT NULL,
  `floor`         INT              DEFAULT NOT NULL,
  `usableSurface` DOUBLE           DEFAULT NOT NULL,
  `balconyNo`     INT              DEFAULT NOT NULL,
  `roomNo`        INT              DEFAULT NOT NULL,
  `kitchenNo`     INT              DEFAULT NOT NULL,
  `garrage`       BOOLEAN,
  `parkingPlaces` INT              DEFAULT NOT NULL,
  `idFeatures`    INT PRIMARY KEY  AUTO_INCREMENT
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;
DROP TABLE IF EXISTS `images`;

CREATE TABLE IF NOT EXISTS `images` (
  `image`    MEDIUMBLOB NULL DEFAULT NULL,
  `idOffers` INT,
  `idImages` INT PRIMARY KEY AUTO_INCREMENT
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;
