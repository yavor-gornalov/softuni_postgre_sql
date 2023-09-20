SELECT 
	e.id,
	concat_ws(' ',
	e.first_name ,
	e.last_name) AS full_name,
	e.job_title,
	e.salary
FROM
	employees e
WHERE
	e.salary >1000