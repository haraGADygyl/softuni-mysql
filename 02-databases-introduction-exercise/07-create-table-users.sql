CREATE TABLE `users` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`username` VARCHAR(30) NOT NULL,
`password` VARCHAR(26) NOT NULL,
`profile_picture` BLOB,
`last_login_time` DATETIME,
`is_deleted` BOOLEAN
);

INSERT INTO `users` (`username`, `password`, `profile_picture`, `last_login_time`, `is_deleted`)
VALUES
('Ivan66', '1234', 'pic', '2020-01-01', FALSE),
('dragan1', '1234', 'pic', '2020-01-01', FALSE),
('Ivan66', '1234', 'pic', '2020-01-01', FALSE),
('Ivan66', '1234', 'pic', '2020-01-01', FALSE),
('Ivan66', '1234', 'pic', '2020-01-01', FALSE);