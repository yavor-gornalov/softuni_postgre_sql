SELECT
	t.id ,
	t.side * t.height / 2 AS area
FROM
	triangles t