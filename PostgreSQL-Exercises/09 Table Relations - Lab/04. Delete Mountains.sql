-- JUDGE does not have tables "peaks" and "mountains"
DROP table IF EXISTS peaks;
DROP table IF EXISTS mountains;


CREATE TABLE IF NOT EXISTS mountains (
	id SERIAL PRIMARY KEY,
	"name" VARCHAR(50) NOT NULL 
);

CREATE TABLE peaks(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	mountain_id INT,
	CONSTRAINT fk_mountain_id 
	FOREIGN KEY(mountain_id) REFERENCES mountains(id) ON
	DELETE
		CASCADE
);

ALTER TABLE peaks
DROP CONSTRAINT IF EXISTS fk_peaks_mountains,
DROP CONSTRAINT IF EXISTS fk_mountain_id,
ADD CONSTRAINT fk_mountain_id
FOREIGN KEY (mountain_id) REFERENCES mountains(id) ON
DELETE
	CASCADE;

DROP TABLE mountains CASCADE;