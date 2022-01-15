CREATE TABLE `directors` (
`id` INT PRIMARY KEY AUTO_INCREMENT, 
`director_name` VARCHAR(30) NOT NULL, 
`notes` TEXT);

INSERT INTO `directors` (`director_name`, `notes`)
VALUES 
('Test', 'test notes'),
('Test', 'test notes'),
('Test', 'test notes'),
('Test', 'test notes'),
('Test', 'test notes');

CREATE TABLE `genres` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`genre_name` VARCHAR(15) NOT NULL,
`notes` TEXT);

INSERT INTO `genres` (`genre_name`, `notes`)
VALUES 
('test', 'test notes'),
('test', 'test notes'),
('test', 'test notes'),
('test', 'test notes'),
('test', 'test notes');

CREATE TABLE `categories` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`category_name` VARCHAR(20) NOT NULL,
`notes` TEXT);

INSERT INTO `categories` (`category_name`, `notes`)
VALUES
('test', 'test notes'),
('test', 'test notes'),
('test', 'test notes'),
('test', 'test notes'),
('test', 'test notes');

CREATE TABLE `movies` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`title` VARCHAR(30) NOT NULL,
`director_id` INT,
`copyright_year` INT,
`length` INT,
`genre_id` INT,
`category_id` INT,
`rating` DOUBLE,
`notes` TEXT);

INSERT INTO `movies` (`title`, `director_id`, `copyright_year`, `length`, `genre_id`, `category_id`, `rating`, `notes`)
VALUES
('test title', 1, 1, 2020, 1, 1, 5.7, 'some notes'),
('test title', 1, 1, 2022, 1, 1, 5.7, 'some notes'),
('test title', 1, 1, 2022, 1, 1, 5.7, 'some notes'),
('test title', 1, 1, 2022, 1, 1, 5.7, 'some notes'),
('test title', 1, 1, 2022, 1, 1, 5.7, 'some notes');