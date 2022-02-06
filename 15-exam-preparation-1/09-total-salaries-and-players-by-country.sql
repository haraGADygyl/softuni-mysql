SELECT 
    co.`name`,
    COUNT(pla.`id`) AS `total_count_of_players`,
    SUM(pla.`salary`) AS `total_sum_of_salaries`
FROM
    `players` AS pla
        RIGHT JOIN
    `teams` AS tea ON pla.`team_id` = tea.`id`
        RIGHT JOIN
    `stadiums` AS stad ON tea.`stadium_id` = stad.`id`
        RIGHT JOIN
    `towns` AS tws ON stad.`town_id` = tws.`id`
        RIGHT JOIN
    `countries` AS co ON tws.`country_id` = co.`id`
GROUP BY co.`name`
ORDER BY total_count_of_players DESC , co.`name`