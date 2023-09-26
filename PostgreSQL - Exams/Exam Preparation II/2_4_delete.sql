DELETE 
	FROM clients
WHERE id IN (

	SELECT
		c.id
	FROM
		clients c
	LEFT JOIN courses c2 ON
		c.id = c2.client_id
	WHERE
		c2.id IS NULL
		AND char_length(c.full_name) > 3
);

