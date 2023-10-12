SELECT
	count(e.department_id = 1 OR NULL)  AS "Engineering",
	count(e.department_id = 2 OR NULL)  AS "Tool Design",
	count(e.department_id = 3 OR NULL)  AS "Sales",
	count(e.department_id = 4 OR NULL)  AS "Marketing",
	count(e.department_id = 5 OR NULL)  AS "Purchasing",
	count(e.department_id = 6 OR NULL)  AS "Research and Development",
	count(e.department_id = 7 OR NULL)  AS "Production"
FROM
	employees e