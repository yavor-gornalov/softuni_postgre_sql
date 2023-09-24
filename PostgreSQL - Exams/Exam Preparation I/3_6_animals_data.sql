SELECT 
	a."name",
	at2.animal_type AS animal_type,
	to_char(a.birthdate, 'DD.MM.YYYY') AS birthdate
FROM
	animals a
JOIN animal_types at2 ON
	a.animal_type_id = at2.id
ORDER BY a."name";