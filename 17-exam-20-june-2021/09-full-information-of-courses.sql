SELECT 
    a.`name`,
    IF(HOUR(co.`start`) BETWEEN 6 AND 20,
        'Day',
        'Night') AS `day_time`,
    co.`bill`,
    cl.`full_name`,
    ca.`make`,
    ca.`model`,
    ct.`name`
FROM
    `addresses` AS a
        JOIN
    `courses` AS co ON a.`id` = co.`from_address_id`
        JOIN
    `clients` AS cl ON co.`client_id` = cl.`id`
        JOIN
    `cars` AS ca ON co.`car_id` = ca.`id`
        JOIN
    `categories` AS ct ON ca.`category_id` = ct.`id`
ORDER BY co.`id`