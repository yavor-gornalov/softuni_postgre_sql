UPDATE employees 
SET 
	salary = salary  + (CASE WHEN hire_date < '2015-01-16' THEN 2500
							 WHEN hire_date < '2020-03-04' THEN 1500
							 ELSE 0 END),
	job_title = concat((CASE WHEN hire_date < '2015-01-16' THEN 'Senior '
							 WHEN hire_date < '2020-03-04' THEN 'Mid-'
							 ELSE '' END), job_title);	


--UPDATE employees 
--SET 
--	salary = salary + 2500,
--	job_title = concat('Senior ', job_title)
--WHERE hire_date < '2015-01-16';
--UPDATE employees 
--SET 
--	salary = salary + 1500
--	job_title = concat('Mid-', job_title)
--WHERE hire_date >= '2015-01-16' AND hire_date < '2020-03-04';