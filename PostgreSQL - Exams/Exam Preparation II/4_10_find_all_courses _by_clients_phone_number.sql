CREATE FUNCTION fn_courses_by_client(
	phone_num VARCHAR(20)) RETURNS integer AS $$
		SELECT
			count(*)
	FROM
		clients c JOIN courses c2 ON c.id = c2.client_id 
	WHERE
		c.phone_number = phone_num;
$$ LANGUAGE SQL;


SELECT fn_courses_by_client('(803) 6386812');
SELECT fn_courses_by_client('(831) 1391236');
SELECT fn_courses_by_client('(704) 2502909');
