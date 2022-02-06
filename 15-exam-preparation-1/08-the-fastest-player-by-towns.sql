SELECT 
    MAX(`speed`) AS `max_speed`, tw.`name`
FROM
    `skills_data` AS sd
        RIGHT JOIN
    `players` AS p ON sd.`id` = p.`skills_data_id`
        RIGHT JOIN
    `teams` AS t ON p.`team_id` = t.`id`
        RIGHT JOIN
    `stadiums` AS s ON t.`stadium_id` = s.`id`
        RIGHT JOIN
    `towns` AS tw ON s.`town_id` = tw.`id`
WHERE
    t.`name` != 'Devify'
GROUP BY tw.`id`
ORDER BY `max_speed` DESC , tw.`name`;