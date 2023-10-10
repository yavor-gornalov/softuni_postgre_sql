SELECT
	LEFT(u.first_name, 2) AS initials,
	count(*) AS user_count
FROM
	users u
GROUP BY
	initials
ORDER BY
	user_count DESC,
	initials;