SELECT
	c.full_name ,
	count(c2.id) AS count_of_cars,
	sum(c2.bill) AS total_sum
FROM
	clients c
JOIN courses c2 ON
	c.id = c2.client_id
WHERE
	c.full_name LIKE '_a%'
GROUP BY
	c.id
HAVING count(c2.id) > 1
ORDER BY
	c.full_name;