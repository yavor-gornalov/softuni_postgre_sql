SELECT
	EXTRACT(YEAR FROM b.booked_at AT TIME ZONE 'UTC') AS "YEAR",
	EXTRACT(MONTH FROM b.booked_at AT TIME ZONE 'UTC') AS "MONTH",
	EXTRACT(DAY FROM b.booked_at AT TIME ZONE 'UTC') AS "DAY",
	EXTRACT(HOUR FROM b.booked_at  AT TIME ZONE 'UTC') AS "HOUR",
	extract(MINUTE  FROM  b.booked_at) AS "MINUTE",
	CEIL(extract(SECOND FROM b.booked_at))AS "SECOND"
FROM
	bookings b