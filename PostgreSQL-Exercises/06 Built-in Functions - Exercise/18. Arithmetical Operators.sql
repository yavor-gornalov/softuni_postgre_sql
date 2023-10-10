CREATE TABLE "bookings_calculation" AS 
SELECT
	b.booked_for
FROM
	bookings b
WHERE
	b.apartment_id = 93;
	
ALTER TABLE "bookings_calculation"
ADD COLUMN "multiplication" NUMERIC,
ADD COLUMN "modulo" NUMERIC; 

UPDATE
	bookings_calculation
SET
	multiplication = booked_for * 50,
	modulo = booked_for % 50;
	
SELECT
	*
FROM
	bookings_calculation;