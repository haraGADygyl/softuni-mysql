UPDATE `clients` AS c
        JOIN
    `employees_clients` AS ec ON c.id = ec.employee_id 
SET 
    ec.employee_id = (SELECT 
            *
        FROM
            (SELECT 
                ec1.employee_id
            FROM
                `employees_clients` AS ec1
            GROUP BY ec1.employee_id
            ORDER BY COUNT(ec1.employee_id) ASC , ec1.employee_id
            LIMIT 1) AS ss)
WHERE
    ec.client_id = ec.employee_id;