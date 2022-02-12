SELECT 
    e.`id`,
    CONCAT(e.`first_name`, ' ', e.`last_name`) AS `full_name`,
    CONCAT('$', e.`salary`) AS `salary`,
    e.`started_on`
FROM
    `employees` AS e
WHERE
    e.`salary` >= 100000
        AND e.`started_on` >= '2018-01-01'
ORDER BY `salary` DESC , e.`id`;