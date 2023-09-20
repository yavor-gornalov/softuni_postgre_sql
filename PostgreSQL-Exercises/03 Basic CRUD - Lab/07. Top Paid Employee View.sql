CREATE VIEW 
	view_top_paid_employee AS 
SELECT
	*
FROM
	employees e
ORDER BY
	salary DESC
LIMIT 1;

SELECT
	*
FROM
	view_top_paid_employee;