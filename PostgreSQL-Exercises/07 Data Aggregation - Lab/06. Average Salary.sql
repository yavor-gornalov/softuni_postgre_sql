SELECT
	e.department_id ,
	avg(e.salary) AS avg_salary
FROM
	employees e
GROUP BY
	e.department_id
ORDER BY
	e.department_id; 