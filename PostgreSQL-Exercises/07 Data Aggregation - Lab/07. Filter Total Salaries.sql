SELECT
	e.department_id ,
	sum(e.salary) AS "Total Salary"
FROM
	employees e
GROUP BY
	e.department_id
HAVING
	sum(e.salary) < 4200
ORDER BY
	e.department_id; 