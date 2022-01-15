CREATE TABLE `people` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(200) NOT NULL,
`picture` BLOB,
`height` DECIMAL(65, 2),
`weight` DECIMAL(65, 2),
`gender` VARCHAR(1) NOT NULL,
`birthdate` DATE NOT NULL,
`biography` TEXT
);

INSERT INTO `people` (`name`, `picture`,`height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES 
('Ivan', 'pic', 10, 50, 'm', '1990-01-01', 'some bio'),
('Gosho', 'pic', 20, 60, 'm', '1991-01-01', 'some bio'),
('Viki', 'pic', 9, 30, 'f', '1993-01-01', 'some bio'),
('Jorko', 'pic', 11, 45, 'm', '1991-01-01', 'some bio'),
('Jorka', 'pic', 8, 46, 'f', '1996-01-01', 'some bio');