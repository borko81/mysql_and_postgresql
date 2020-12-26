-- CREATE TABLES: USERS, TOWNS AND ADDRESS

-- USERS
CREATE TABLE `users`
(
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`username` VARCHAR(50),
`gender` CHAR(1)
);

-- TOWNS
CREATE TABLE `towns` (
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50)
);

-- ADDRESS FOREIGN KEY WITH USERS AND TOWNS
CREATE TABLE `address` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` INT,
    `ctreet` VARCHAR(20),
    `towns_id` INT,
    FOREIGN KEY (`user_id`)
    REFERENCES `users`(`id`),
    FOREIGN KEY(`towns_id`)
    REFERENCES `towns`(`id`)
);

-- INSERT STATEMENT
INSERT INTO `users` (`username`, `gender`) VALUES ('Borko', 'M');
INSERT INTO `towns` (`name`) VALUES ('Velingrad');
INSERT INTO `address` (`user_id`, `ctreet`, `towns_id`) VALUES
(
	1, 'Some address', 1
);

-- SELECT WITH JOIN
SELECT
`users`.`username`, `ctreet`, `towns`.`name`
FROM `address`
INNER JOIN `users` ON `users`.`id` = `address`.`user_id`
INNER JOIN `towns` ON `towns`.`id` = `address`.`towns_id`;









