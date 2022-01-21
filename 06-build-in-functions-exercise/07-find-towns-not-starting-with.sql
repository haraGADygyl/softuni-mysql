SELECT *
FROM `towns`
-- WHERE LEFT(`name`, 1) NOT IN ('r', 'b', 'd')
WHERE `name` REGEXP '^[^rbd]'
ORDER BY `name`;