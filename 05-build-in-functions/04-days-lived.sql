SELECT 
    CONCAT_WS(' ', `first_name`, `last_name`) AS 'Full Name',
    DATEDIFF(`died`, `born`) AS 'Days Lived'
FROM
    `authors`;