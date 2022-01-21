SELECT `country_name`, `iso_code`
FROM `countries`
-- WHERE `country_name` LIKE '%a%a%a%'
WHERE `country_name` REGEXP '(.*a.*){3,}'
ORDER BY `iso_code`;