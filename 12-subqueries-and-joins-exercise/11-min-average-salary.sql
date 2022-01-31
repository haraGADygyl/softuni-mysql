SELECT 
    AVG(`salary`) AS `min_avg_salary`
FROM
    `employees`
GROUP BY `department_id`
ORDER BY `min_avg_salary`
LIMIT 1;