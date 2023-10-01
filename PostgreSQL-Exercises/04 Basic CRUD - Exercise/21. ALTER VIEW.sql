CREATE OR REPLACE
VIEW view_addresses AS
SELECT
	concat_ws(' ',
	e.first_name,
	e.last_name) AS "Full Name",
	e.department_id,
	concat_ws(' ',
	a."number",
	a.street) AS "Address"
FROM
	employees e
JOIN addresses a ON
	e.address_id = a.id 
ORDER BY "Address";

SELECT * FROM view_addresses;