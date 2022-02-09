DELIMITER $$

CREATE FUNCTION udf_users_photos_count(username VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN (SELECT 
    COUNT(*)
FROM
    `photos` AS p
        JOIN
    `users_photos` AS up ON p.`id` = up.`user_id`
        JOIN
    `users` AS u ON up.`user_id` = u.`id`
WHERE
    u.`username` = username);
END $$

SELECT UDF_USERS_PHOTOS_COUNT('ssantryd') AS photosCount;