SELECT
	b.user_id,
	concat_ws(' ', 
	EXTRACT(MONTH FROM age(b.starts_at, b.booked_at)),
	'mons',
	CASE WHEN EXTRACT(DAY FROM age(b.starts_at, b.booked_at)) > 1 THEN 'days'
	ELSE 'day'
	END,
	to_char (b.starts_at - b.booked_at , 'HH24:MI:SS.MS')) AS "Early Birds"
FROM
	bookings b
WHERE
	(EXTRACT (MONTH FROM (b.starts_at)) - EXTRACT (MONTH FROM (b.booked_at))) >= 10;
	
SELECT
	user_id,
	AGE(starts_at, booked_at) AS "Early Birds"
FROM
	bookings
WHERE
	starts_at - booked_at >= '10 MONTHS';