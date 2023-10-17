CREATE OR REPLACE FUNCTION 
	fn_cash_in_users_games(game_name VARCHAR(50)) 
	RETURNS TABLE (
		total_cash NUMERIC
	) AS $$
BEGIN
	RETURN QUERY
	SELECT 
		TRUNC(SUM(helper.cash), 2)  total_cash
	FROM 
		(SELECT
			cash,
			ROW_NUMBER() OVER (ORDER BY cash DESC) AS row_num
		FROM
			users_games ug JOIN	games g
				ON ug.game_id = g.id
		WHERE 
			g.name = game_name) helper
	WHERE 
		row_num  % 2 <> 0;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM  fn_cash_in_users_games('Love in a mist')