SELECT
	c.last_name ,
	CEIL(bg.rating) AS average_rating,
	p."name" 
FROM
	publishers p
JOIN board_games bg ON
	p.id = bg.publisher_id
JOIN creators_board_games cbg ON cbg.board_game_id = bg.id
JOIN creators c ON c.id = cbg.creator_id WHERE p."name" = 'Stonemaier Games' 
ORDER BY bg.rating DESC 