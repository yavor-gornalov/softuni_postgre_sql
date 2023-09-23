SELECT
	concat_ws(' ',
	c."name",
	c.state) AS "Cities Information",
	c.area AS "Area (km2)"
FROM
	cities c