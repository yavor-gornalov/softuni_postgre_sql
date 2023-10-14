SELECT
	min(avg_area) AS min_average_area
FROM
	(
	SELECT
		avg(c.area_in_sq_km) AS avg_area
	FROM
		countries c
	GROUP BY
		continent_code
) AS avg_area;
