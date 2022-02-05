DELIMITER $$

CREATE PROCEDURE usp_get_holders_with_balance_higher_than(amount DECIMAL(20, 4))
BEGIN
    SELECT ah.`first_name`, ah.`last_name`
    FROM `account_holders` AS ah
    JOIN `accounts` AS a 
    ON ah.`id` = a.`account_holder_id`
    GROUP BY ah.`id`
    HAVING SUM(a.`balance`) > amount
    ORDER BY ah.`id`;
END $$

CALL usp_get_holders_with_balance_higher_than(7000);