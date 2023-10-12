SELECT
	e.department_id,
	count(*), 
	CASE
		WHEN AVG(e.salary) <= 50000 THEN 'Below average'
		ELSE 'Above average'
	END AS salary_level
FROM
	employees e
GROUP BY
	e.department_id
HAVING
	AVG(e.salary) >= 30000
ORDER BY
	e.department_id ;

