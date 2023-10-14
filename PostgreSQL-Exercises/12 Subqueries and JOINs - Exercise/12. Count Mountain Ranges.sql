SELECT
	mc.country_code,
	count(*) AS mountain_range_count
FROM
	mountains m
JOIN mountains_countries mc ON
	m.id = mc.mountain_id
WHERE
	mc.country_code IN ('US', 'RU', 'BG')
GROUP BY
	mc.country_code
ORDER BY
	mountain_range_count DESC;