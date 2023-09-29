SELECT
	p."name" ,
	p.start_date ,
	p.end_date
FROM
	projects p
WHERE
	start_date >= '2016-06-01 07:00:00'
	AND end_date <'2023-06-04 00:00:00'
ORDER BY
	p.start_date ;