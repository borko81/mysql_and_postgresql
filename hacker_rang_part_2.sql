/*
* 
* * 
* * * 
* * * * 
* * * * *
*/
SET @NUMBER = 0;
SELECT REPEAT('* ', @NUMBER := @NUMBER + 1)
FROM INFORMATION_SCHEMA.TABLES
LIMIT 20;