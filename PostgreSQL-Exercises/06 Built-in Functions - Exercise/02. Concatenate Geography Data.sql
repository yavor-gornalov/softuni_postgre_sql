CREATE OR REPLACE
VIEW view_continents_countries_currencies_details AS
SELECT
	concat(c.continent_name,
	': ',
	c.continent_code) AS "Continent Details",
	concat_ws(' - ',
	c2.country_name,
	c2.capital,
	c2.area_in_sq_km,
	'km2') AS "Country Information",
	concat(c3.description,
	' (',
	c3.currency_code,
	')') AS "Currencies"
FROM
	continents c
JOIN countries c2 ON
	c.continent_code = c2.continent_code
JOIN currencies c3 ON
	c2.currency_code = c3.currency_code
ORDER BY
	"Country Information",
	"Currencies";
	
SELECT * FROM view_continents_countries_currencies_details ;