SELECT
	b.apartment_id,
	b.booked_for,
	c.first_name,
	c.country 
FROM
	bookings b
JOIN customers c
		USING (customer_id)
WHERE
	c.job_type = 'Lead';