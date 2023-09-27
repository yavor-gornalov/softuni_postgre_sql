SELECT
	bg."name",
	bg.rating
FROM
	board_games bg
ORDER BY bg.release_year, bg."name" DESC ;