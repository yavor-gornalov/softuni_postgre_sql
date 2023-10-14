SELECT
	count(*)
FROM
	bookings b
JOIN customers c
		USING (customer_id)
GROUP BY
	c.last_name
HAVING
	c.last_name = 'Hahn';