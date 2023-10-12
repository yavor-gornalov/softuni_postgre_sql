SELECT
	*
FROM
	departments d
JOIN employees e ON
	d.id = e.department_id;