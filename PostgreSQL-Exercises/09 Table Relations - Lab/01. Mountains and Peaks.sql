CREATE TABLE IF NOT EXISTS mountains (
	id SERIAL PRIMARY KEY,
	"name" VARCHAR(50) NOT NULL 
);

CREATE TABLE IF NOT EXISTS peaks (
	id SERIAL PRIMARY KEY,
	"name" VARCHAR(50) NOT NULL,
	mountain_id INT,
	CONSTRAINT fk_peaks_mountains FOREIGN KEY (mountain_id) REFERENCES mountains(id)
);
