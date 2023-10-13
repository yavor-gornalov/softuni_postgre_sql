SELECT
	m.mountain_range,
	p.peak_name,
	p.elevation 
FROM
	peaks p
JOIN mountains m ON
	p.mountain_id = m.id
WHERE
	m.mountain_range = 'Rila'
ORDER BY p.elevation DESC;