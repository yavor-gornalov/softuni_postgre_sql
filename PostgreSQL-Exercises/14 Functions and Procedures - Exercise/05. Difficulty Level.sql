CREATE OR REPLACE FUNCTION 
	fn_difficulty_level("level" INT) 
	RETURNS VARCHAR(20) AS $$
DECLARE
	difficulty_level VARCHAR(20);
BEGIN
	IF ("level" <= 40) THEN RETURN 'Normal Difficulty';
	ELSEIF ("level" <= 60) THEN RETURN 'Nightmare Difficulty';
	ELSE RETURN 'Hell Difficulty';
	END IF;
--	CASE
--		WHEN ("level" <= 40) THEN difficulty_level := 'Normal Difficulty';
--		WHEN ("level" <= 60) THEN difficulty_level := 'Nightmare Difficulty';
--		ELSE difficulty_level := 'Hell Difficulty';
--	END CASE;
	RETURN difficulty_level;
END;
$$ LANGUAGE plpgsql;

SELECT fn_difficulty_level(39)
