SELECT
	deposit_group,
	is_deposit_expired,
	trunc(avg(wd.deposit_interest)) AS "Deposit Interest"
FROM
	wizard_deposits wd
WHERE wd.deposit_start_date >= '1985-01-01'
GROUP BY
	wd.deposit_group ,
	wd.is_deposit_expired
ORDER BY
	wd.deposit_group DESC,
	wd.is_deposit_expired;
