SELECT
	DISTINCT c."name",
	c.area AS "Area (km2)"
FROM
	cities c
ORDER BY
	c."name" DESC;