UPDATE employees
	SET salary = salary + 100
WHERE job_title = 'Manager';

SELECT
	*
FROM
	employees e
WHERE
	job_title = 'Manager';