SELECT
	ltrim(p.peak_name,
	'M') AS "Left Trim", 
	rtrim(p.peak_name,
	'm') AS "Right Trim"
FROM
	peaks p