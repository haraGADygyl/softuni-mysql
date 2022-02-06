DELIMITER $$

CREATE FUNCTION udf_stadium_players_count(stadium_name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN (
        SELECT COUNT(*)
        FROM `players` AS p
        JOIN `teams` AS t
        ON p.`team_id` = t.`id`
        JOIN `stadiums` AS s
        ON t.`stadium_id` = s.`id`
        WHERE s.`name` = stadium_name
    );
END $$
