SELECT
	concat_ws(' ',
	e.first_name,
	e.last_name) AS "Full Name",
	e.job_title ,
	e.salary
FROM
	employees e
WHERE
	salary IN (12500, 14000, 23600, 25000)
ORDER BY
	e.salary DESC ;