DELIMITER $$

CREATE PROCEDURE udp_modify_user (address VARCHAR(30), town VARCHAR(30))
BEGIN
    UPDATE `users` 
SET 
    `age` = `age` + 10
WHERE
    EXISTS( SELECT 
            *
        FROM
            `addresses`
        WHERE
            `address` = address
                AND `town` = town);
END $$

CALL udp_modify_user ('97 Valley Edge Parkway', 'Divinópolis');
SELECT u.username, u.email,u.gender,u.age,u.job_title FROM users AS u
WHERE u.username = 'eblagden21';