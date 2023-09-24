SELECT
	v."name" AS "Volunteers Name",
	v.phone_number AS "Phone Number",
	regexp_replace(v.address,
		'^(\s+)?Sofia(\s+)?,(\s+)?',
		'') AS "Address"
FROM
	volunteers v
JOIN volunteers_departments vd ON
	v.department_id = vd.id
WHERE
	v.address LIKE '%Sofia%'
	AND 
	vd.department_name = 'Education program assistant'
ORDER BY
	v."name"
