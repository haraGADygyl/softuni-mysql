DELIMITER $$

CREATE FUNCTION udf_client_cards_count(`name` VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
RETURN (SELECT 
    COUNT(ca.`card_number`) AS `cards`
FROM
    `clients` AS cl
        JOIN
    `bank_accounts` AS ba ON cl.`id` = ba.`client_id`
        JOIN
    `cards` AS ca ON ba.`id` = ca.`bank_account_id`
WHERE
    cl.`full_name` = `name`
GROUP BY cl.`full_name`);
END $$

SELECT c.full_name, udf_client_cards_count('Baxy David') as `cards` FROM clients c
WHERE c.full_name = 'Baxy David';