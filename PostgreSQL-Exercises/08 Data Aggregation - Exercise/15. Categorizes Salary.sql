SELECT
	e.job_title ,
	CASE
		WHEN AVG(e.salary) < 27500 THEN 'Need Improvement'
		WHEN AVG(e.salary) <= 45800 THEN 'Medium'
		ELSE 'Good'		
	END AS "Category"
FROM
	employees e
GROUP BY e.job_title  
ORDER BY "Category", e.job_title ;


