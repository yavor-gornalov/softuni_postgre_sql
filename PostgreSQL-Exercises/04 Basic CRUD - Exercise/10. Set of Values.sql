SELECT
	ep.employee_id ,
	ep.project_id
FROM
	employees_projects ep
WHERE
	ep.employee_id IN (200, 250)
	AND ep.project_id NOT IN (50, 100);