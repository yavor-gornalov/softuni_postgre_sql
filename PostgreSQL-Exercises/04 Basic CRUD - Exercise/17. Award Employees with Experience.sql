
UPDATE
	employees
SET
	salary = salary + 1500,
	job_title = concat_ws(' ', 'Senior', job_title)
WHERE
	hire_date BETWEEN '1998-01-01 00:00:00' AND '2000-01-05 00:00:00'