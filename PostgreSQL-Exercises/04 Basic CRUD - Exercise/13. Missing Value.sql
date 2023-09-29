SELECT
	e.id,
	e.first_name ,
	e.last_name
FROM
	employees e
WHERE
	e.middle_name IS NULL
LIMIT 3;