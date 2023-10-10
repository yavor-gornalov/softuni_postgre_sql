SELECT
	CONCAT(p.elevation,
	' ',
	REPEAT('-',
	3),
	REPEAT('>',
	2),
	' ',
	p.peak_name) AS "Elevation -->> Peak Name"
FROM
	peaks p
WHERE
	p.elevation >= 4884