SELECT
	u.companion_full_name,
	u.email
FROM
	users u
WHERE
	u.companion_full_name ILIKE '%aNd%'
	AND
	u.email NOT LIKE '%@gmail';
