SELECT 
    ca.`id`,
    CONCAT(ca.`card_number`, ' : ', cl.`full_name`) AS `card_token`
FROM
    `cards` AS ca
        JOIN
    `bank_accounts` AS ba ON ca.`bank_account_id` = ba.`id`
        JOIN
    `clients` AS cl ON ba.`client_id` = cl.`id`
ORDER BY ca.`id` DESC;