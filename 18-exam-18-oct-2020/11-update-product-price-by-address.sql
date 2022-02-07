DELIMITER $$

CREATE PROCEDURE udp_update_product_price (address_name VARCHAR (50))
BEGIN
DECLARE amount INT;
    IF address_name LIKE '0%' 
    THEN SET amount = 100;
    ELSE SET amount = 200; 
    END IF;

UPDATE products AS p 
SET 
    `price` = `price` + amount
WHERE
    p.`id` IN (SELECT 
            ps.`product_Id`
        FROM
            addresses AS a
                JOIN
            stores AS s ON a.`id` = s.`address_id`
                JOIN
            products_stores AS ps ON s.`id` = ps.`store_id`
        WHERE
            a.`name` = address_name);
END $$

CALL udp_update_product_price('1 Cody Pass');
SELECT name, price FROM products WHERE id = 17;