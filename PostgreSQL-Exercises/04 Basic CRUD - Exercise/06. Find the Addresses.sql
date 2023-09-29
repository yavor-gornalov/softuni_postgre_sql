SELECT
	a.id,
	concat(a."number" ,
	' ',
	a.street) AS Address,
	a.city_id
FROM
	addresses a
WHERE
	a.id >= 20;