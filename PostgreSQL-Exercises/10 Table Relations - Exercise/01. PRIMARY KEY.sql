CREATE TABLE IF NOT EXISTS products (
	product_name varchar(100)
);

INSERT INTO products (product_name) VALUES 
	('Broccoli'),
	('Shampoo'),
	('Toothpaste'),
	('Candy');

ALTER TABLE products ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM products;