SELECT
	b.booking_id,
	b.apartment_id,
	c.companion_full_name 
FROM
	customers c
JOIN bookings b USING (customer_id)
WHERE
	b.apartment_id IS NULL;
	
