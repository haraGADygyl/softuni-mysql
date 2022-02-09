INSERT INTO `addresses`(`address`, `town`, `country`, `user_id`)
(SELECT u.`username`, u.`password`, u.`ip`, u.`age`
FROM `users` AS u
WHERE u.`gender` = 'M');