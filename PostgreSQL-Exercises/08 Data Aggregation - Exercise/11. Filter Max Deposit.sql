SELECT
	wd.magic_wand_creator,
	max(wd.deposit_amount) AS "Max Deposit Amount"
FROM
	wizard_deposits wd
GROUP BY
	wd.magic_wand_creator
HAVING
	max(wd.deposit_amount) BETWEEN 20000 AND 400000
ORDER BY
	"Max Deposit Amount" DESC
LIMIT 3;