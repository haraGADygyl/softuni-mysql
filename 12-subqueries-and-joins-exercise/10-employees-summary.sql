SELECT 
    e.`employee_id`,
    CONCAT_WS(' ', e.`first_name`, e.`last_name`) AS `employee_name`,
    CONCAT_WS(' ', e2.`first_name`, e2.`last_name`) AS `manager_name`,
    d.`name`
FROM
    `employees` AS e
        JOIN
    `employees` AS e2 ON e2.`employee_id` = e.`manager_id`
        JOIN
    `departments` AS d ON e.`department_id` = d.`department_id`
ORDER BY e.`employee_id`
LIMIT 5;