SELECT
	bg."name" ,
	bg.rating,
	c."name" AS category_name
FROM
	board_games bg
JOIN players_ranges pr ON
	bg.players_range_id = pr.id
JOIN categories c ON
	bg.category_id = c.id
WHERE
	(bg.rating > 7 AND bg."name" ILIKE '%a%')
	OR  (bg.rating > 7.5 AND (pr.min_players, pr.max_players) = (2, 5))
ORDER BY
	bg."name",
	bg.rating DESC
LIMIT 5;