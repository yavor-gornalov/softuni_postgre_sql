SELECT
	CASE
		WHEN wd.age <=10 THEN '[0-10]'
		WHEN wd.age <=20 THEN '[11-20]'
		WHEN wd.age <=30 THEN '[21-30]'
		WHEN wd.age <=40 THEN '[31-40]'
		WHEN wd.age <=50 THEN '[41-50]'
		WHEN wd.age <=60 THEN '[51-60]'
		ELSE '[61+]'
	END AS "Age Group",
	count(*)
FROM
	wizard_deposits wd
GROUP BY
	"Age Group"
ORDER BY
	"Age Group";