SELECT 
    p.`id`,
    c.`date`,
    p.`description`,
    COUNT(c.`id`) AS `commentsCount`
FROM
    `comments` AS c
        JOIN
    `photos` AS p ON c.`photo_id` = p.`id`
GROUP BY p.`id`
ORDER BY `commentsCount` DESC , p.`id`
LIMIT 5;