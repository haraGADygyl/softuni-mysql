DELIMITER $$

CREATE PROCEDURE usp_get_towns_starting_with(town_start_letter TEXT)
BEGIN
    SELECT t.`name`
    FROM `towns` AS t
    WHERE t.`name` LIKE CONCAT(town_start_letter, '%')
    ORDER BY t.`name`;
END $$

CALL usp_get_towns_starting_with('b');