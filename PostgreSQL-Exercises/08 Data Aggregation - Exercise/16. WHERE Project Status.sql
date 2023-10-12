SELECT
	p.project_name,
	CASE
		WHEN p.start_date IS NOT NULL AND p.end_date IS NULL THEN 'In Progress'
		WHEN p.start_date IS NULL OR p.end_date IS NULL THEN 'Ready for development'
		ELSE 'Done'
	END AS project_status
FROM
	projects p
WHERE p.project_name LIKE '%Mountain%'