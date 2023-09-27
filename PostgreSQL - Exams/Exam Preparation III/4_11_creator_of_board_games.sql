CREATE OR REPLACE
FUNCTION fn_creator_with_board_games(
    creator_first_name VARCHAR(30)
) RETURNS INTEGER AS $$
BEGIN
    RETURN COALESCE(
        (SELECT
			COUNT(*)
		FROM
			creators c
		JOIN creators_board_games cbg ON
			c.id = cbg.creator_id
		WHERE
			c.first_name = creator_first_name
        ), 0);
END;
$$ LANGUAGE plpgsql;


SELECT fn_creator_with_board_games('Bruno');
SELECT fn_creator_with_board_games('Alexander');

