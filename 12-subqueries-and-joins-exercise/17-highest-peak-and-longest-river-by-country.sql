SELECT 
    c.`country_name`,
    MAX(p.`elevation`) AS `max_peak_elevation`,
    MAX(r.`length`) AS `max_river_length`
FROM
    `countries` AS c
        JOIN
    `mountains_countries` AS mc USING (`country_code`)
        JOIN
    `mountains` AS m ON mc.`mountain_id` = m.`id`
        JOIN
    `peaks` AS p ON m.`id` = p.`mountain_id`
        JOIN
    `countries_rivers` AS cr USING (`country_code`)
        JOIN
    `rivers` AS r ON cr.`river_id` = r.`id`
GROUP BY c.`country_name`
ORDER BY `max_peak_elevation` DESC , `max_river_length` DESC , c.`country_name`
LIMIT 5;