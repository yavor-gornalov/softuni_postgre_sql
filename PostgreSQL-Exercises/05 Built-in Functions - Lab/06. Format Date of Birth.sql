SELECT
	a.last_name AS "Last Name",
	to_char(a.born, 'DD (Dy) Mon YYYY') AS "Date of Birth"
FROM
	authors a;