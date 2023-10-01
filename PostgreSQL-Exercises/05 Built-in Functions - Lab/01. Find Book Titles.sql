SELECT
	b.title
FROM
	books b
WHERE
	b.title LIKE 'The%'
ORDER BY
	b.id;