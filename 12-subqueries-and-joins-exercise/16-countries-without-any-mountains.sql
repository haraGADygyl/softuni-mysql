SELECT 
    COUNT(*) AS `country_count`
FROM
    `countries` AS c
        LEFT JOIN
    `mountains_countries` AS mc USING (`country_code`)
WHERE
    mc.`mountain_id` IS NULL;