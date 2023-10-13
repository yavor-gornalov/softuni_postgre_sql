SELECT
	count(*) AS countries_without_rivers
FROM
	countries_rivers cr
RIGHT JOIN countries c ON
	 cr.country_code = c.country_code
WHERE
	cr.country_code IS NULL;