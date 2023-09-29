SELECT
	e.id,
	concat_ws(' ',
	e.first_name,
	e.middle_name,
	e.last_name) AS "Full Name",
	e.hire_date AS "Hire Date"
FROM
	employees e
ORDER BY
	e.hire_date 
OFFSET 9;