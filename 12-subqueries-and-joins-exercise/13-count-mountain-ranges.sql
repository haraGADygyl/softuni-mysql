SELECT 
    c.`country_code`,
    COUNT(m.`mountain_range`) AS `mountain_range`
FROM
    `countries` AS c
        JOIN
    `mountains_countries` AS mc USING (`country_code`)
        JOIN
    `mountains` AS m ON mc.`mountain_id` = m.`id`
WHERE
    c.`country_code` IN ('US' , 'RU', 'BG')
GROUP BY c.`country_code`
ORDER BY `mountain_range` DESC;