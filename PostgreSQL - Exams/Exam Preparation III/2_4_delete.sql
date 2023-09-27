DELETE
FROM
	board_games
WHERE
	publisher_id IN (
	SELECT
		p.id
	FROM
		publishers p
	WHERE
		address_id IN (
		SELECT
			a.id
		FROM
			addresses a
		WHERE
			a.town LIKE 'L%'));

DELETE
FROM
	publishers
WHERE
	address_id IN (
	SELECT
		a.id
	FROM
		addresses a
	WHERE
		a.town LIKE 'L%');

DELETE
FROM
	addresses
WHERE
	town LIKE 'L%';
	
