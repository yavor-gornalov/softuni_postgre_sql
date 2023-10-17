SELECT
	tablename,
	indexname,
	indexdef
FROM
	pg_catalog.pg_indexes
WHERE
	indexdef LIKE '%key ON public%'
ORDER BY
	tablename,
	indexname