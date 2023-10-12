SELECT
	wd.magic_wand_creator,
	min(wd.magic_wand_size) AS "Minimum Wand Size"
FROM
	wizard_deposits wd
GROUP BY
	wd.magic_wand_creator
ORDER BY
	"Minimum Wand Size"
LIMIT 5;