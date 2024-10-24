-- DROP DATABASE IF EXISTS pet_database;
-- CREATE DATABASE pet_database;
-- USE pet_database;

-- DROP TABLE IF EXISTS petPet, petEvent;

-- Up to the next CUTOFF POINT should be in task1.sql

CREATE TABLE petPet (
  petname VARCHAR(20) PRIMARY KEY,
  owner VARCHAR(45),
  species ENUM('M', 'F'),
  gender VARCHAR(45),
  birth date,
  death date
);

CREATE TABLE petEvent (
  petname VARCHAR(20),
  eventdate date,
  eventtype VARCHAR(15),
  remark VARCHAR(255),
  FOREIGN KEY (petname),
  PRIMARY KEY (petname, eventdate)
);