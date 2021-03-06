INSERT INTO COURSE(ACRONYM, NAME, CREDITS)
VALUES ('CI0112', 'Progra1', NULL);

INSERT INTO COURSE(ACRONYM, NAME, CREDITS)
VALUES ('MA0291', 'IntroMate', 4);

INSERT INTO _GROUP(ACRONYM, NUMBER, YEAR, SEMESTER, AVAILABLE_SPACES, ENROLLED)
VALUES ('MA0291', 1, 2022, 1, 30, 30);

--DELETE FROM COURSE
--WHERE ACRONYM = 'CI0112';



SELECT *
FROM _GROUP;

SELECT *
FROM COURSE
WHERE CREDITS IS NOT NULL;

SELECT NAME, CREDITS
FROM COURSE AS C
WHERE ACRONYM IN (SELECT ACRONYM
					FROM _GROUP 
					WHERE SEMESTER = 1 AND YEAR = 2022 
					AND C.NAME LIKE '%Mate%');

SELECT NAME, CREDITS, NUMBER
FROM COURSE AS C JOIN _GROUP AS G ON C.ACRONYM = G.ACRONYM
WHERE SEMESTER = 1 AND YEAR =2022;

SELECT NAME, CREDITS, NUMBER
FROM COURSE AS C, _GROUP AS G
WHERE SEMESTER = 1 AND YEAR =2022 AND C.ACRONYM = G.ACRONYM;

SELECT *
FROM COURSE;

SELECT CREDITS, COUNT (*) AS 'Number of courses'
FROM COURSE
--WHERE CREDITS IS NOT NULL
GROUP BY CREDITS
HAVING COUNT (*) > 2;
--HAVING CREDITS IS NOT NULL;


CREATE VIEW COURSE_GROUPS(NAME, ACRONYM, NUMBER_GROUPS) AS
SELECT NAME, G.ACRONYM, COUNT(*)
FROM COURSE AS C, _GROUP AS G
WHERE C.ACRONYM = G.ACRONYM
GROUP BY NAME, G.ACRONYM;

INSERT INTO _GROUP(ACRONYM, NUMBER, YEAR, SEMESTER, AVAILABLE_SPACES, ENROLLED)
VALUES ('CI0126', 3, 2022, 1, 20, 10);

SELECT *
FROM COURSE_GROUPS;

CREATE PROCEDURE GetNameCourse(@ACRONYM CHAR(6))
AS BEGIN
	SELECT NAME
	FROM COURSE
	WHERE ACRONYM = @ACRONYM
END;

EXECUTE GetNameCourse @ACRONYM = 'CI0127'

CREATE FUNCTION GetNameCourseFunction(@ACRONYM AS CHAR(6))
RETURNS VARCHAR(50)
AS BEGIN
	DECLARE @Name VARCHAR(50)
	SELECT @Name = NAME
	FROM COURSE
	WHERE ACRONYM = @ACRONYM
	RETURN @Name
END;

SELECT dbo.GetNameCourseFunction('CI0127') AS 'Course Name'