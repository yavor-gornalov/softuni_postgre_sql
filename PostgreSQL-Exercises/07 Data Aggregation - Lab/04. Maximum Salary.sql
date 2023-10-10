SELECT
	e.department_id ,
	max(e.salary) AS max_salary
FROM
	employees e
GROUP BY
	e.department_id
ORDER BY
	e.department_id;