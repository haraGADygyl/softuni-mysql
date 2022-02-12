DELETE FROM `employees` AS e
WHERE (e.`id` NOT IN (SELECT employee_id FROM employees_clients));