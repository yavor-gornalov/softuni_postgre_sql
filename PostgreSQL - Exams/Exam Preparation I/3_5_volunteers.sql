SELECT 
	v."name", 
	v.phone_number, 
	v.address,
	v.animal_id,
	v.department_id
FROM
	volunteers v
ORDER BY
	v."name",
	v.animal_id ,
	v.department_id;