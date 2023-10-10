SELECT
	e.department_id ,
	sum(e.salary) AS total_salaries
FROM
	employees e
GROUP BY
	e.department_id
ORDER BY
	e.department_id; 