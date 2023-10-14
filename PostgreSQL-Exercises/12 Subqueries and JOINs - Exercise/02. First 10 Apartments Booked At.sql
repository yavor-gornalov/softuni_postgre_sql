SELECT
	a."name",
	a.country,
	b.booked_at::date
FROM
	apartments a
LEFT JOIN bookings b ON
	a.booking_id = b.booking_id
LIMIT 10;