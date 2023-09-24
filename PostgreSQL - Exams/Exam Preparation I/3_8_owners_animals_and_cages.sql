SELECT
	concat(o."name",
	' - ',
	a."name") AS "Owners - Animals",
	o.phone_number AS "Phone Number",
	ac.cage_id AS "Cage ID"
FROM
	owners o
JOIN animals a ON
	o.id = a.owner_id
JOIN animals_cages ac ON
	a.id = ac.animal_id
WHERE
	a.animal_type_id = 1
ORDER BY
	o."name",
	a."name" DESC ;