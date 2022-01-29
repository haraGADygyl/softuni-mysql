SELECT 
    e.`employee_id`,
    e.`first_name`,
    e.`last_name`,
    e.`department_id`,
    e.`salary`
FROM
    `employees` AS e
WHERE
    `manager_id` IS NULL;