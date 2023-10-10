SELECT
	sum(b.booked_for) AS total_value
FROM
	bookings b
WHERE
	b.apartment_id = 90