DELIMITER $$

CREATE PROCEDURE usp_get_holders_full_name()
BEGIN
    SELECT CONCAT_WS(' ', a.`first_name`, a.`last_name`) AS `full_name`
    FROM `account_holders` AS a
    ORDER BY `full_name`, a.`id`;
END $$

CALL usp_get_holders_full_name();