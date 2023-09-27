SELECT 
	concat_ws(' ', c.first_name, c.last_name) AS full_name,
	c.email,
	max(bg.rating)
FROM
	creators c
JOIN creators_board_games cbg ON
	c.id = cbg.creator_id 
LEFT JOIN board_games bg ON
	cbg.board_game_id = bg.id
WHERE
	c.email LIKE '%.com'
GROUP BY c.id 
ORDER BY full_name 
