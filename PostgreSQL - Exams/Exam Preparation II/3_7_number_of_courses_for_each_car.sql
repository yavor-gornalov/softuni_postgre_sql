SELECT
	c.id,
	c.make ,
	c.mileage,
	count(c2.car_id) AS count_of_courses,
	round(avg(c2.bill),
	2) AS average_bill
FROM
	cars c
LEFT JOIN courses c2 ON
	c.id = c2.car_id
GROUP BY
	c.id
HAVING 
	count(c2.car_id) <> 2
ORDER BY
	count_of_courses DESC ,
	c.id;