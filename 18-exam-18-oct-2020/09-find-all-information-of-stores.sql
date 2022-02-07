SELECT 
    REVERSE(s.`name`) AS `reversed_name`,
    CONCAT(UPPER(t.`name`), '-', a.`name`) AS `full_address`,
    COUNT(e.`id`) AS `employee_count`
FROM
    stores AS s
        LEFT JOIN
    addresses AS a ON s.`address_id` = a.`id`
        LEFT JOIN
    towns AS t ON a.`town_id` = t.`id`
        LEFT JOIN
    employees AS e ON s.`id` = e.`store_id`
GROUP BY s.`id`
HAVING `employee_count` > 0
ORDER BY `full_address`;