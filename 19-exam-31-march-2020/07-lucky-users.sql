SELECT 
    CONCAT(u.`id`, ' ', u.`username`) AS `id_username`,
    u.`email`
FROM
    `users` AS u
        JOIN
    `users_photos` AS up ON u.`id` = up.`user_id`
        JOIN
    `photos` AS p ON up.`photo_id` = p.`id`
WHERE
    u.`id` = p.`id`
ORDER BY u.`id`;