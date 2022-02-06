UPDATE `coaches` AS c 
SET 
    `coach_level` = `coach_level` + 1
WHERE
    `first_name` LIKE 'A%'
        AND (SELECT 
            COUNT(*)
        FROM
            players_coaches AS pc
        WHERE
            pc.`coach_id` = c.`id`) > 0;