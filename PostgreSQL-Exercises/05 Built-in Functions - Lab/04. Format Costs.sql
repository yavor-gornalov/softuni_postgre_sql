SELECT
	b.title ,
	to_char(b."cost" , 'FM999999999.000') AS modified_price
FROM
	books b