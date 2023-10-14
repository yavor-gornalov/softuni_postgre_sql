SELECT
	count(*) AS countries_without_mountains
FROM
	countries c
LEFT JOIN mountains_countries mc
		USING (country_code)
WHERE
	mc.mountain_id IS NULL;