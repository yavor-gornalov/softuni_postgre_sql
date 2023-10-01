CREATE OR REPLACE
VIEW view_initials AS 
SELECT
	LEFT(e.first_name,
	2) AS "initial",
	e.last_name
FROM
	employees e
ORDER BY
	e.last_name;

SELECT
	*
FROM
	view_initials;