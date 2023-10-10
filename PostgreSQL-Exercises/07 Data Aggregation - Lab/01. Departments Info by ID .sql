SELECT
	e.department_id ,
	count(e.id) AS employee_count
FROM
	employees e
GROUP BY
	e.department_id
ORDER BY
	department_id;