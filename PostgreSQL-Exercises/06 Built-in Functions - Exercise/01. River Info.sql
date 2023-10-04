CREATE OR REPLACE
VIEW view_river_info AS
SELECT
	concat('The river',
	' ',
	river_name,
	' ',
	'flows into the',
	' ',
	outflow,
	' ',
	'and is',
	' ',
	"length",
	' ',
	'kilometers long.') AS "River Information"
FROM
	rivers r
ORDER BY
	r.river_name;
	

SELECT * FROM view_river_info;