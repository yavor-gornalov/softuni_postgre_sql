CREATE OR REPLACE
VIEW view_company_chart AS
SELECT
	"Full Name",
	"Job Title"
FROM
	company_chart cc 
WHERE
	"Manager ID" = 184;

SELECT * FROM view_company_chart;