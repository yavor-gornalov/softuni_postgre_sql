
CREATE OR REPLACE
PROCEDURE sp_animals_with_owners_or_not_1(
	IN animal_name VARCHAR(30), 
	OUT owner_name TEXT 
)
LANGUAGE plpgsql AS $$
BEGIN
    SELECT 
    	CASE WHEN o."name" IS NOT NULL THEN
    		o."name"
    	ELSE
    		'For adoption'
    	END
    INTO 
		owner_name
	FROM 
		animals AS a
	LEFT JOIN 
		owners AS o 
	ON
		a.owner_id = o."id"
	WHERE 
		a."name" = animal_name;
END;
$$;


CALL sp_animals_with_owners_or_not('Pumpkinseed Sunfish', '');
CALL sp_animals_with_owners_or_not('Hippo', '');
CALL sp_animals_with_owners_or_not('Brown bear', '');