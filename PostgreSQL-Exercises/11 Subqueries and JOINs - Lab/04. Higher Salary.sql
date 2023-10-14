SELECT
	count(*)
FROM
	employees e
WHERE
	e.salary > (
	SELECT
		avg(e2.salary)
	FROM
		employees e2);