﻿-- Hola soy un comentario 😎

USE HOLA;
--DDL
CREATE DATABASE HELLO;
DROP DATABASE HELLO;

DROP TABLE dbo._GROUP;
DROP TABLE dbo.COURSE;


CREATE TABLE dbo.COURSE(
	ACRONYM CHAR(6) PRIMARY KEY,
	_NAME VARCHAR(50) NOT NULL UNIQUE,
	CREDITS INT DEFAULT 3,
	CONSTRAINT CT_CREDITS
		CHECK(CREDITS > 0),
);

CREATE TABLE dbo._GROUP(
	NUMBER INT,
	SEMESTER INT,
	YEAR INT,
	ACRONYM CHAR(6),
	AVAILABLE_SPACES INT,
	ENROLLED INT DEFAULT 0,
	CONSTRAINT PK_GROUP
		PRIMARY KEY(NUMBER, SEMESTER, YEAR, ACRONYM),
	CONSTRAINT FK_COURSE_ACRONYM
		FOREIGN KEY(ACRONYM) REFERENCES COURSE(ACRONYM),
	CHECK(ENROLLED <= AVAILABLE_SPACES),
);

--INSERT 

INSERT INTO dbo.COURSE
VALUES('CI0127', 'Bases de datos', 4);

INSERT INTO dbo.COURSE(_NAME, ACRONYM, CREDITS)
VALUES
	('PI', 'CI0128', 3), 
	('Inge', 'CI0126', 4);

INSERT INTO dbo._GROUP(ACRONYM, NUMBER, SEMESTER, YEAR, 
	AVAILABLE_SPACES, ENROLLED)
VALUES
	('CI0127', 2, 2, 2022, 20, 17),
	('CI0128', 2, 2, 2022, 20, 16),
	('CI0126', 2, 2, 2022, 20, 16),
	('CI0128', 2, 1, 2022, 20, 18);

-- SELECT
SELECT *
FROM dbo.COURSE;

SELECT _NAME, ACRONYM
FROM dbo.COURSE;

SELECT DISTINCT CREDITS
FROM COURSE;

SELECT *
FROM COURSE
WHERE CREDITS > 13;

SELECT *
FROM _GROUP
WHERE ENROLLED BETWEEN 17 AND 20;

SELECT *
FROM dbo._GROUP;

--CROSS PRODUCT
SELECT *
FROM COURSE AS C, _GROUP AS G;

SELECT *
FROM COURSE AS C, _GROUP AS G
WHERE C.ACRONYM = G.ACRONYM AND SEMESTER = 2;

SELECT *
FROM COURSE AS C, _GROUP AS G
WHERE C.ACRONYM = G.ACRONYM;

SELECT *
FROM COURSE AS C JOIN _GROUP AS G ON C.ACRONYM = G.ACRONYM
WHERE SEMESTER = 2
ORDER BY CREDITS DESC; -- ASC (DEFECTO)

SELECT *
FROM COURSE
WHERE ACRONYM LIKE '_____7';

SELECT *
FROM COURSE
WHERE ACRONYM LIKE 'CI%';

(
	SELECT ACRONYM, NUMBER
	FROM _GROUP
	WHERE SEMESTER = 2
)
INTERSECT --UNION, EXCEPT
(
	SELECT ACRONYM, NUMBER
	FROM _GROUP
	WHERE YEAR = 2022
)

SELECT AVG(ENROLLED) AS AVG_ENROLLED, 
	COUNT(*) AS NUMBER_GROUPS,
	MAX(ENROLLED) AS MAX_ENROLLED,
	MIN(ENROLLED) AS MIN_ENROLLED,
	COUNT (DISTINCT ENROLLED) AS DISTINCT_ENROLLED_SIZE
FROM _GROUP
WHERE AVAILABLE_SPACES > 10;

--DELETE
DELETE FROM COURSE;
DELETE FROM _GROUP;

DELETE FROM COURSE
WHERE CREDITS > 3;

-- UPDATES
UPDATE COURSE
SET CREDITS = 0
WHERE ACRONYM = 'CI0127' OR ACRONYM = 'CI0126';

UPDATE COURSE
SET CREDITS *=2;