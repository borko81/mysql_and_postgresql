CREATE TABLE `gamebar`.`employees` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`FIRST_NAME` VARCHAR(50) NOT NULL,
	`LAST_NAME` VARCHAR(50) NOT NULL,
	PRIMARY_KEY(`ID`);
)

CREATE TABLE `gamebar`.`categories` (
	`id` NOT NULL AUTO_INCREMENT,
	`name` CARCHAR(50) NOT NULL,
	PRIMARY_KEY(`id`)
);

ALTER TABLE `products`
ADD INDEX `fk_categories_ind` (`categoriey_id` ASC) VISIBLE;

ALTER TABLE `gamebar`.`products`
ADD CONSTRAINT `my_fk`
FOREIGN KEY(`categoriey_id`)
REFERENCES `gamebar`.`categories` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

INSERT INTO EMPLOYEES (first_name, last_name)
VALUES
('Emoloyee two', 'Last name employee two'),
('Employee_one', 'Last name Employee');

SELECT * FROM employees;

INSERT INTO `gamebar`.`categories`
(`name`)
VALUES
('first_categori'),
('second_categorie');

SELECT * from `gamebar`.`categories`;