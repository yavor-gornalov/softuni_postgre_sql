SELECT
	a.first_name,
	a.last_name,
	EXTRACT (YEAR FROM a.born)AS "year"
FROM
	authors a;