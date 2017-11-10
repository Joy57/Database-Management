CREATE DATABASE sampledb;

use  sampledb;

CREATE TABLE paper 
(
paperID INTEGER,
title VARCHAR(50),
abstract VARCHAR(250),
pdf VARCHAR(100),
PRIMARY KEY (paperID)
);

CREATE TABLE author
(
email VARCHAR(100),
name VARCHAR(50),
affiliation VARCHAR(100),
PRIMARY KEY (email)
);

CREATE TABLE write1(
    paperID INT NOT NULL,
    email VARCHAR(50) NOT NULL, 
   	Order1 INT,
    PRIMARY KEY (paperID, email),
    FOREIGN KEY (paperID) REFERENCES paper(paperID),
    FOREIGN KEY (email) REFERENCES author (email)
    );


CREATE TABLE pcmember
(
email VARCHAR(50),
name VARCHAR(20),
PRIMARY KEY (email)
);

create table review
(
reportid INTEGER,
sdate DATE,
comment VARCHAR(250),
recommendation CHAR(1),
paperid INTEGER,
email VARCHAR(50),
UNIQUE (paperid, email),
FOREIGN KEY (paperID) REFERENCES paper(paperID),
FOREIGN KEY (email) REFERENCES pcmember(email)
);


CREATE ASSERTION 3pc 
CHECK NOT EXISTS 
(
SELECT * 
FROM Papers P
WHERE 3 <> 
(
SELECT COUNT(*)
FROM Review R
WHERE R.paperid = P.paperid
)
);

CREATE ASSERTION atmostfivepapers
CHECK NOT EXISTS
( 
SELECT * FROM pcmember P
WHERE 5 < 
(
SELECT * 
FROM review R
WHERE R.email = P.email
)
);

