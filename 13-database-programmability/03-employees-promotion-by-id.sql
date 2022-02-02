DELIMITER $$

CREATE PROCEDURE usp_raise_salary_by_id(id INT)
BEGIN
    IF((SELECT COUNT(*) FROM `employees` WHERE `employee_id` = id) > 0)
    THEN
        UPDATE `employees` 
        SET `salary` = `salary` * 1.05
        WHERE `employee_id` = id;
    END IF;
END $$

CALL usp_raise_salary_by_id(17);