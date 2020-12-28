-- SUBSTRING
SELECT 
    CONCAT_WS('',
            UPPER(SUBSTRING(`name` FROM 1 FOR 1)),
            SUBSTRING(LOWER(`name`) FROM 2 FOR LENGTH(`name`))) AS NAME
FROM
    `minions`;

-- MIN_LENGTH_NAME
SELECT 
    `name`, CHAR_LENGTH(`name`)
FROM
    `minions`
WHERE
    LENGTH(`name`) = (SELECT 
            MIN(LENGTH(`name`))
        FROM
            `MINIONS`)
LIMIT 1;

-- LOCATE
SELECT
	IF(LOCATE('B', `name`) = 1, `name`, null)
FROM `minions`;

-- SQRT, POW
SELECT SQRT(25);
SELECT POW(2, 4);
SELECT CEILING(3.14);

-- TIMESTAMPDIFF
SELECT TIMESTAMPDIFF(YEAR, '1981-07-20', NOW());












