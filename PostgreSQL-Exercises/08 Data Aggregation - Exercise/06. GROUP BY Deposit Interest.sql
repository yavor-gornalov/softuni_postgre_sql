SELECT
	wd.deposit_group,
	sum(wd.deposit_interest) AS "Deposit Interest"
FROM
	wizard_deposits wd
GROUP BY
	wd.deposit_group
ORDER BY
	"Deposit Interest" DESC;