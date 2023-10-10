SELECT
	c.continent_name ,
	TRIM(c.continent_name) AS trim
FROM
	continents c