-- ALTER TABLE MINIONS ADD FOREIGN KEY
ALTER TABLE `minions`
ADD COLUMN `cities_id` INT,
ADD CONSTRAINT `fk_minions_cities`
FOREIGN KEY (`cities_id`)
REFERENCES `cities`(`id`);

SELECT * FROM `minions`;

INSERT INTO `minions`
(`name`, `age`, `cities_id`)
VALUES
(
	'Djenin', 39,
    247
);

-- UPDATA WITH SELECT STATEMENT
UPDATE `minions`
SET `minions`.`cities_id` = (SELECT `cities`.`id` from `cities` where `cities`.`name` like 'България')
WHERE `minions`.`cities_id` is Null;

SELECT * FROM `minions`;