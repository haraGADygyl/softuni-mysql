SELECT 
    COUNT(*) AS `items_count`,
    ca.`name`,
    SUM(p.`quantity_in_stock`) AS `total_quantity`
FROM
    `categories` AS ca
        JOIN
    `products` AS p ON ca.`id` = p.`category_id`
GROUP BY ca.`name`
ORDER BY `items_count` DESC , `total_quantity`
LIMIT 5;