CREATE TABLE monasteries(
	id SERIAL PRIMARY KEY,
	monastery_name VARCHAR(255),
	country_code CHAR(2)
);

INSERT INTO monasteries 
	(monastery_name, country_code)
VALUES
	('Rila Monastery "St. Ivan of Rila"', 'BG'),
	('Bachkovo Monastery "Virgin Mary"', 'BG'),
	('Troyan Monastery "Holy Mother''s Assumption"', 'BG'),
	('Kopan Monastery', 'NP'),
	('Thrangu Tashi Yangtse Monastery', 'NP'),
	('Shechen Tennyi Dargyeling Monastery', 'NP'),
	('Benchen Monastery', 'NP'),
	('Southern Shaolin Monastery', 'CN'),
	('Dabei Monastery', 'CN'),
	('Wa Sau Toi', 'CN'),
	('Lhunshigyia Monastery', 'CN'),
	('Rakya Monastery', 'CN'),
	('Monasteries of Meteora', 'GR'),
	('The Holy Monastery of Stavronikita', 'GR'),
	('Taung Kalat Monastery', 'MM'),
	('Pa-Auk Forest Monastery', 'MM'),
	('Taktsang Palphug Monastery', 'BT'),
	('Sümela Monastery', 'TR');

ALTER TABLE countries 
DROP COLUMN IF EXISTS three_rivers,
ADD COLUMN three_rivers BOOL DEFAULT FALSE;


UPDATE countries 
SET three_rivers = TRUE
WHERE country_code IN (
	SELECT
		c.country_code
	FROM
		countries c
	LEFT JOIN countries_rivers cr 
		USING (country_code)
	GROUP BY
		c.country_code
	HAVING count(*) >= 3);

SELECT 
	m.monastery_name AS monastery, 
	c.country_name AS country 
FROM monasteries m 
JOIN countries c 
	USING(country_code)
WHERE c.three_rivers = FALSE 
ORDER BY monastery;  
