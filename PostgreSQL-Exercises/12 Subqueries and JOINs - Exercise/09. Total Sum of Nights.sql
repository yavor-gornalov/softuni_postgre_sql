SELECT
	a."name",
	sum(b.booked_for)
FROM
	apartments a
JOIN bookings b
		USING (apartment_id)
GROUP BY
	a."name"
ORDER BY
	a."name";