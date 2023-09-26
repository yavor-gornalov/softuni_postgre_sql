	CREATE TABLE search_results (
	    id SERIAL PRIMARY KEY,
	    address_name VARCHAR(50),
	    full_name VARCHAR(100),
	    level_of_bill VARCHAR(20),
	    make VARCHAR(30),
	    "condition" CHAR(1),
	    category_name VARCHAR(50)
	);
	
	CREATE OR REPLACE PROCEDURE sp_courses_by_address(address_name VARCHAR(100))
	LANGUAGE plpgsql AS $$
	BEGIN
		TRUNCATE TABLE search_results;
	    INSERT INTO search_results (
	        address_name,
	        full_name,
	        level_of_bill,
	        make,
	        CONDITION,
	        category_name
	    )
	    SELECT
	        a."name" AS address_name,
	        c2.full_name,
	        CASE
	            WHEN c.bill <= 20 THEN 'Low'
	            WHEN c.bill <= 30 THEN 'Medium'
	            ELSE 'High'
	        END AS level_of_bill,
	        c3.make,
	        c3."condition",
	        c4."name" AS category_name
	    FROM
	        addresses a
	    JOIN courses c ON
	        a.id = c.from_address_id
	    JOIN clients c2 ON
	        c.client_id = c2.id
	    JOIN cars c3 ON
	        c3.id = c.car_id
	    JOIN categories c4 ON
	        c3.category_id = c4.id
	    WHERE
	        a."name" = address_name
	    ORDER BY
	        c3.make,
	        c2.full_name;
	END;
	$$;

CALL sp_courses_by_address('66 Thompson Drive');
SELECT * FROM search_results;

CALL sp_courses_by_address('700 Monterey Avenue');
SELECT * FROM search_results;
