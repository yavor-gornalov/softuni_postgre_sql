SELECT
	c.population,
	CHAR_LENGTH(c.population::VARCHAR) AS length
FROM
	countries c