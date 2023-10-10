SELECT
	a.latitude,
	round(a.latitude, 2),
	trunc(a.latitude, 2) 
FROM
	apartments a