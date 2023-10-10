SELECT
	e.department_id ,
	min(e.salary) AS min_salary
FROM
	employees e
GROUP BY
	e.department_id
ORDER BY
	e.department_id;