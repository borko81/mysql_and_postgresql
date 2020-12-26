(
	SELECT CITY, LENGTH(CITY)
	FROM STATION
	ORDER BY LENGTH(CITY), CITY
	LIMIT 1
)
UNION
(
	SELECT CITY, LENGTH(CITY)
	FROM STATION
	ORDER BY LENGTH(CITY) DESC, CITY
	LIMIT 1
);

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT(CITY)
FROM STATION
WHERE LEFT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U')

SELECT DISTINCT(CITY)
FROM STATION
WHERE RIGHT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U');

SELECT DISTINCT(CITY)
FROM STATION
WHERE
    RIGHT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U')
    AND
    LEFT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U');
	
SELECT DISTINCT(CITY)
FROM STATION
WHERE
    RIGHT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U')
    OR
    LEFT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U');

-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.	
SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3), ID

-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.
SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000
AND MONTHS < 10
ORDER BY EMPLOYEE_ID
	
--

	
	
	
	
	
	
	
	
	

