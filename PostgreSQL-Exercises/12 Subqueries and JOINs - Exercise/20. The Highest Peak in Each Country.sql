SELECT
    helper.country_name AS country_name,
    COALESCE(helper.peak_name, '(no highest peak)') AS highest_peak_name,
    COALESCE(helper.elevation , 0) AS highest_peak_elevation,
    CASE
    	WHEN helper.peak_name IS NOT NULL THEN helper.mountain_range
    	ELSE '(no mountain)'
    END AS mountain
FROM (
	SELECT
	    c.country_name,
	    p.peak_name,
	    p.elevation,
	    m.mountain_range,
	    DENSE_RANK() OVER (PARTITION BY c.country_name  ORDER BY p.elevation DESC) AS country_rank
	FROM countries c
	LEFT JOIN mountains_countries mc 
		ON c.country_code = mc.country_code
	LEFT JOIN mountains m 
		ON mc.mountain_id = m.id
	LEFT JOIN peaks p 
		ON m.id = p.mountain_id) AS helper
WHERE helper.country_rank = 1;
