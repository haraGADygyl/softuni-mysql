DELETE `games` FROM `games`
        LEFT JOIN
    `games_categories` ON games.`id` = games_categories.`game_id` 
WHERE
    `category_id` IS NULL
    AND `release_date` IS NULL;