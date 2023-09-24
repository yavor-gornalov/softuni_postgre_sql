SELECT 
	o."name" AS "Owner",
	count(a."name") AS "Count of animals"
FROM
	owners o
JOIN animals a ON
	o.id = a.owner_id
GROUP BY
	o."name"
ORDER BY
	"Count of animals" DESC,
	o."name"
LIMIT 5;