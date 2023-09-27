SELECT
	bg.id,
	bg."name",
	bg.release_year,
	c."name" AS category_name
FROM
	board_games bg
JOIN categories c ON
	bg.category_id = c.id
WHERE
	c."name" IN ('Strategy Games', 'Wargames')
ORDER BY
	bg.release_year DESC;