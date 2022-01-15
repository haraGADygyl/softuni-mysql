CREATE TABLE `categories` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`category` VARCHAR(20) NOT NULL,
`daily_rate` DOUBLE,
`weekly_rate` DOUBLE,
`monthly_rate` DOUBLE,
`weekend_rate` DOUBLE);

INSERT INTO `categories` (`category`, `daily_rate`, `weekly_rate`, `weekend_rate`)
VALUES
('test', 1, 1, 1),
('test', 1, 1, 1),
('test', 1, 1, 1);

CREATE TABLE `cars` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`plate_number` VARCHAR(10),
`make` VARCHAR(20),
`model` VARCHAR(20),
`car_year` INT,
`category_id` INT,
`doors` INT,
`picture` BLOB,
`car_condition` VARCHAR(30),
`available` BOOLEAN);

INSERT INTO `cars` (`plate_number`, `make`, `model`, `doors`, `available`)
VALUES
('TX1000TX', 'Toyota', 'Avensis', 4, TRUE),
('TX1000TX', 'Toyota', 'Avensis', 4, TRUE),
('TX1000TX', 'Toyota', 'Avensis', 4, TRUE);

CREATE TABLE `employees` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`first_name` VARCHAR(20),
`last_name` VARCHAR(20),
`title` VARCHAR(20),
`notes` TEXT);

INSERT INTO `employees` (`first_name`, `last_name`, `title`)
VALUES
('test', 'test', 'test'),
('test', 'test', 'test'),
('test', 'test', 'test');

CREATE TABLE `customers` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`driver_licence_number` VARCHAR(20),
`full_name` VARCHAR(30),
`address` VARCHAR(50),
`city` VARCHAR(20),
`zip_code` INT(10),
`notes` TEXT);

INSERT INTO `customers` (`driver_licence_number`, `full_name`, `city`, `zip_code`)
VALUES
('123123JH', 'test name', 'test city', 1000),
('123123JH', 'test name', 'test city', 1000),
('123123JH', 'test name', 'test city', 1000);

CREATE TABLE `rental_orders` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`employee_id` INT NOT NULL,
`customer_id` INT NOT NULL,
`car_id` INT NOT NULL,
`car_condition` VARCHAR(20),
`tank_level` DOUBLE,
`kilometrage_start` DOUBLE,
`kilometrage_end` DOUBLE,
`total_kilometrage` DOUBLE,
`start_date` DATETIME,
`end_date` DATETIME,
`total_days` INT,
`rate_applied` DOUBLE,
`tax_rate` DOUBLE,
`order_status` VARCHAR(15),
`notes` TEXT);

INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`, `total_days`)
VALUES
(1, 1, 1, 10),
(1, 1, 1, 10),
(1, 1, 1, 10);