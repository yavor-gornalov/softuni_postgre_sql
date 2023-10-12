CREATE OR REPLACE
VIEW view_wizard_deposits_with_expiration_date_before_1983_08_17 AS 
SELECT
	concat_ws(' ',
	wd.first_name,
	wd.last_name) AS "Wizard Name",
	wd.deposit_start_date AS "Start Date",
	wd.deposit_expiration_date AS "Expiration Date",
	wd.deposit_amount AS "Amount"
FROM
	wizard_deposits wd
WHERE
	wd.deposit_expiration_date <= '1983-08-17'
GROUP BY
	"Wizard Name",
	"Start Date",
	"Expiration Date",
	"Amount"
ORDER BY
	"Expiration Date";
	
SELECT
	*
FROM
	view_wizard_deposits_with_expiration_date_before_1983_08_17;