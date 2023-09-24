SELECT
	a."name" AS "Animal Name",
	date_part('year',
	a.birthdate) AS "Birth Year",
	at2.animal_type AS "Animal Type"
FROM
	animals a
JOIN animal_types at2 ON
	a.animal_type_id = at2.id
WHERE
	owner_id IS NULL
	AND date_part('year',
	a.birthdate) >= 2017
	AND at2.id <> 3
ORDER BY
	a."name";