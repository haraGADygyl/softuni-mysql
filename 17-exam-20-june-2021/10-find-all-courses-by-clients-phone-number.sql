DELIMITER $$

CREATE FUNCTION udf_courses_by_client (phone_num VARCHAR(20))
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN (SELECT 
            COUNT(co.`id`)
        FROM
            `clients` AS cl
                JOIN
            `courses` AS co ON cl.`id` = co.`client_id`
        WHERE
            cl.`phone_number` = phone_num);
END $$

SELECT udf_courses_by_client ('(704) 2502909') as `count`;