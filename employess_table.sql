-- change salary colum, add 0.00
UPDATE employees
set salary = 0.00
WHERE salary is NULL;

-- change name first_name
ALTER TABLE employees 
RENAME COLUMN first_name TO first;

-- change name last_name
ALTER TABLE `employees`
RENAME COLUMN `last_name` TO `last`;

-- increse size of column last
ALTER TABLE `employees`
MODIFY `last` VARCHAR(100) NOT NULL;

-- select all
SELECT * FROM EMPLOYEES;


