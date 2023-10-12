SELECT
	wd.last_name,
	count(*) AS "Notes with Dumbledore"
FROM
	wizard_deposits wd
WHERE
	wd.notes LIKE '%Dumbledore%'
GROUP BY
	wd.last_name;