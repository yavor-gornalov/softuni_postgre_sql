ALTER TABLE bookings 
ADD COLUMN "billing_day" TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP;

SELECT
	b.billing_day,
	to_char(b.billing_day,
	'DD "Day" MM "Month" YYYY "Year" HH24:MI:SS') AS "Billing DAY"
FROM
	bookings b;