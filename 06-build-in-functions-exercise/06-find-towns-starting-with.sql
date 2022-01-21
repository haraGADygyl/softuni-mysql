SELECT *
FROM `towns`
-- WHERE LEFT(`name`, 1) IN ('m', 'k', 'b', 'e')
WHERE `name` REGEXP '^[mkbe]'
ORDER BY `name`;