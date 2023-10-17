UPDATE 
	countries
SET country_name = 'Burma'
WHERE
	country_name = 'Myanmar';

INSERT INTO monasteries 
	(monastery_name, country_code)
VALUES
	('Hanga Abbey', (SELECT c.country_code  FROM countries c WHERE c.country_name = 'Myanmar')),
	('Myin-Tin-Daik', (SELECT c.country_code  FROM countries c WHERE c.country_name = 'Tanzania'));
		
SELECT
	c2.continent_name,
	c.country_name,
	count(m.id) AS monasteries_count
FROM
	countries c
LEFT JOIN monasteries m
		USING (country_code)
LEFT JOIN continents c2 
		USING (continent_code)
WHERE c.three_rivers = FALSE
GROUP BY
	c.country_name, c2.continent_name 
ORDER BY monasteries_count DESC, c.country_name;
