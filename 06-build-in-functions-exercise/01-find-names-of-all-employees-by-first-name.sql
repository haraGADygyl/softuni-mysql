SELECT `first_name`, `last_name`
FROM `employees`
-- WHERE `first_name` LIKE 'sa%'
-- WHERE LEFT(`first_name`, 2) = 'sa'
WHERE SUBSTRING(`first_name`, 1, 2) = 'sa'
ORDER BY `employee_id`;