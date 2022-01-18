SELECT REPLACE(`title`, 'The', '***') AS 'title'
FROM `books`
WHERE `title` LIKE 'The%';