SELECT
	CONCAT_WS(' ', m.mountain_range, p.peak_name) AS "Mountain Information",
	CHAR_LENGTH(CONCAT_WS(' ', m.mountain_range, p.peak_name)) AS "Characters Length",
	BIT_LENGTH(CONCAT_WS(' ', m.mountain_range, p.peak_name)) AS "Bits of a String"
FROM
	mountains m JOIN peaks p ON m.id = p.mountain_id 