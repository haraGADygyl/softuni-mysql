DELIMITER $$

CREATE FUNCTION udf_top_paid_employee_by_store(store_name VARCHAR(50))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    RETURN (SELECT 
    CONCAT(e.`first_name`, ' ', e.`middle_name`, '. ', e.`last_name`,
            ' works in store for ', 2020 - YEAR(`hire_date`),
            ' years') AS `full_info`
        FROM
            employees AS e
                LEFT JOIN
            stores AS s ON e.`store_id` = s.`id`
        WHERE
            s.`name` = store_name
        ORDER BY e.`salary` DESC
        LIMIT 1);
END $$