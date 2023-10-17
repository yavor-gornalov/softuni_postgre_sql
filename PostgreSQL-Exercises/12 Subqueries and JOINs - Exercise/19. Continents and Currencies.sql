CREATE OR REPLACE VIEW 
	continent_currency_usage AS 
SELECT
    helper.continent_code,
    helper.currency_code,
    helper.currency_usage
FROM continents AS c
JOIN (
    SELECT
        continent_code,
        currency_code,
        COUNT(*) AS currency_usage,
        DENSE_RANK() OVER (PARTITION BY continent_code ORDER BY COUNT(currency_code) DESC) AS frequency_rank
    FROM countries
    GROUP BY continent_code, currency_code
    HAVING COUNT(currency_code) > 1
) AS helper ON c.continent_code = helper.continent_code
WHERE helper.frequency_rank = 1 ORDER BY helper.currency_usage DESC;

SELECT * FROM continent_currency_usage;