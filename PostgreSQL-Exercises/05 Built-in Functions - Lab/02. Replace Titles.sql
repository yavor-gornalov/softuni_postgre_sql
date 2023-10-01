SELECT
	REPLACE(b.title,
	'The',
	'***') AS title
FROM
	books b
WHERE
	b.title LIKE 'The%'
ORDER BY
	b.id;