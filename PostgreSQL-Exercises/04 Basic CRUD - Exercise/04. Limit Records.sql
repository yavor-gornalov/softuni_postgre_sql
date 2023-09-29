SELECT
	e.id AS ID,
	concat_ws(' ',
	e.first_name,
	e.last_name) AS "Full Name",
	e.job_title AS "Job Title"
FROM
	employees e
ORDER BY
	e.first_name
LIMIT 50;