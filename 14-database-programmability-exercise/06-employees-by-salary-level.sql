DELIMITER $$

CREATE FUNCTION ufn_get_salary_level(salary DOUBLE(10, 4))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE salary_level VARCHAR(20);
    IF salary < 30000 THEN SET salary_level = 'Low';
    ELSEIF salary <= 50000 THEN SET salary_level = 'Average';
    ELSE SET salary_level = 'High';
    END IF;
    RETURN salary_level;
END;

CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level TEXT)
BEGIN
    SELECT e.`first_name`, e.`last_name`
    FROM `employees` AS e
    WHERE ufn_get_salary_level(e.`salary`) = salary_level
    ORDER BY e.`first_name` DESC, e.`last_name` DESC;
END $$

CALL usp_get_employees_by_salary_level('High');