SELECT
	concat(a."number" ,
	' ',
	a.street) AS Address,
	a.city_id
FROM
	addresses a
WHERE
	a.city_id % 2 = 0
	AND a.city_id > 0
ORDER BY
	a.city_id ;