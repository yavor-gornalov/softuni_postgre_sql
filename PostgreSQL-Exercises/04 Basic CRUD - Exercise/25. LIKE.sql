SELECT
	p."name" ,
	p.start_date
FROM
	projects p
WHERE p."name" LIKE 'MOUNT%'
ORDER BY p.id;