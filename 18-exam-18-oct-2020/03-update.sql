UPDATE employees 
SET 
    `manager_id` = 3,
    `salary` = `salary` - 500
WHERE
    YEAR(`hire_date`) > 2003
        AND `store_id` NOT IN (SELECT 
            `id`
        FROM
            stores
        WHERE
            `name` IN ('Cardguard' , 'Veribet'));