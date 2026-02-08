INSERT INTO
	products (
		name,
		sku_code,
		price,
		stock_quantity,
		is_available,
		category
	)
VALUES
	(
		'MacBook Air M2',
		'AP8K@M2A',
		1199.99,
		5,
		TRUE,
		'Personal Computers'
	),
	(
		'Lenovo ThinkPad X1',
		'LN3X#1C9',
		1349.50,
		8,
		TRUE,
		'Personal Computers'
	),
	(
		'HP Pavilion 15',
		'HP15PV$2',
		649.99,
		22,
		TRUE,
		'Personal Computers'
	),
	(
		'Acer Aspire 5',
		'AC5A@R31',
		479.00,
		30,
		TRUE,
		'Personal Computers'
	),
	(
		'ASUS ROG Strix G16',
		'RG16#S8K',
		1599.99,
		4,
		TRUE,
		'Gaming'
	),
	(
		'Razer Blade 16',
		'RZ16B$4Q',
		2499.99,
		2,
		FALSE,
		'Gaming'
	),
	(
		'MSI Katana 15',
		'MS15KT@7',
		1099.00,
		12,
		TRUE,
		'Gaming'
	),
	(
		'PS5 Slim',
		'SN5S#L01',
		499.99,
		15,
		TRUE,
		'Gaming'
	),
	(
		'Xbox Series X',
		'XB0X$SX1',
		499.99,
		1,
		FALSE,
		'Gaming'
	),
	(
		'Samsung Galaxy S24',
		'SGS24@U8',
		799.99,
		35,
		TRUE,
		'Smartphones'
	),
	(
		'iPhone 15 Pro',
		'IP15P#MX',
		999.00,
		20,
		TRUE,
		'Smartphones'
	),
	(
		'Google Pixel 8',
		'GP8X@L42',
		699.00,
		18,
		TRUE,
		'Smartphones'
	),
	(
		'OnePlus 12',
		'OP12$R5N',
		749.99,
		25,
		TRUE,
		'Smartphones'
	),
	(
		'Xiaomi 14 Ultra',
		'XI14U#73',
		899.00,
		7,
		TRUE,
		'Smartphones'
	),
	(
		'Sony WH-1000XM5',
		'SNXM5@HC',
		348.00,
		40,
		TRUE,
		'Accessories'
	),
	(
		'Apple AirPods Pro 2',
		'AAPP2$Q9',
		249.99,
		50,
		TRUE,
		'Accessories'
	),
	(
		'Logitech MX Master 3S',
		'LGMX3#S1',
		99.99,
		60,
		TRUE,
		'Accessories'
	),
	(
		'Samsung T7 SSD 1TB',
		'SST7@1TB',
		109.99,
		45,
		TRUE,
		'Accessories'
	),
	(
		'Corsair K70 RGB',
		'CRK70$R2',
		159.99,
		28,
		TRUE,
		'Accessories'
	),
	(
		'Dell UltraSharp 27',
		'DLU27#4K',
		619.99,
		10,
		TRUE,
		'Monitors'
	),
	(
		'LG 34WN80C-B',
		'LG34W@CB',
		549.00,
		6,
		TRUE,
		'Monitors'
	),
	(
		'ASUS ProArt PA278CV',
		'ASPA@278',
		449.99,
		14,
		TRUE,
		'Monitors'
	),
	(
		'BenQ PD2725U',
		'BQ27$PD5',
		799.00,
		3,
		FALSE,
		'Monitors'
	),
	(
		'Samsung Odyssey G9',
		'SOG9#49C',
		1299.99,
		2,
		TRUE,
		'Monitors'
	),
	(
		'Canon EOS R6 II',
		'CNRS6@I2',
		2499.00,
		5,
		TRUE,
		'Cameras'
	),
	(
		'Sony A7 IV',
		'SNA7$IV4',
		2198.00,
		3,
		TRUE,
		'Cameras'
	),
	(
		'iPad Air M2',
		'IPAD@AM2',
		599.00,
		17,
		TRUE,
		'Tablets'
	),
	(
		'Samsung Galaxy Tab S9',
		'SGTS9#U1',
		849.99,
		9,
		TRUE,
		'Tablets'
	),
	(
		'Kindle Paperwhite',
		'KPW$2024',
		139.99,
		100,
		TRUE,
		'Tablets'
	);

SELECT
	*
FROM
	products;

SELECT
	category,
	COUNT(*) AS count,
	AVG(price) AS avg_price
FROM
	products
GROUP BY
	category;

SELECT
	category,
	AVG(price) AS avg_price,
	COUNT(*) AS p_count
FROM
	products
GROUP BY
	category
HAVING
	COUNT(*) > 3;

SELECT
	name,
	price
FROM
	products;

SELECT
	*
FROM
	products
WHERE
	category = 'Gaming';

SELECT
	category
FROM
	products
GROUP BY
	category;

SELECT
	COUNT(*) AS p_count,
	category
FROM
	products
GROUP BY
	category
HAVING
	COUNT(*) > 1.
SELECT
	*
FROM
	products
LIMIT
	3;

SELECT
	name AS item_name,
	price AS item_price
FROM
	products;

SELECT DISTINCT
	*
FROM
	products;

SELECT DISTINCT
	category
FROM
	products;

SELECT
	*
FROM
	products
ORDER BY
	price DESC;

SELECT
	COUNT(*) AS product_count
FROM
	products
GROUP BY
	category
ORDER BY
	product_count DESC;

-- Display the name and price of the cheapest product in the entire table.
SELECT
	name,
	price
FROM
	products
ORDER BY
	price ASC
LIMIT
	1;

-- Find the average price of products that belong to the 'Gaming' or 'Smartphones' category.
SELECT
	category,
	ROUND(AVG(price), 2)
FROM
	products
GROUP BY
	category
HAVING
	category IN ('Gaming', 'Smartphones');

-- Show product names and stock quantity where the product is available, stock is more than 50, and price is not equal to 829.40.
SELECT
	name,
	stock_quantity
FROM
	products
WHERE
	is_available = TRUE
	AND stock_quantity > 50
	AND price != 829.40
	-- Find the most expensive product in each category (name and price)
SELECT
	category,
	MAX(price)
FROM
	products
GROUP BY
	category;

-- Show all the unique categories in uppercase, sorted in descending order.
SELECT DISTINCT
	UPPER(category) AS category_upper
FROM
	products
ORDER BY
	category_upper DESC;

-- Converts the string to lower or upper case
SELECT
	UPPER(name)
FROM
	products;

SELECT
	LOWER(name)
FROM
	products;

SELECT
	name,
	LENGTH(name) AS name_length
FROM
	products;

-- Extracts the substring from a string
SELECT
	name,
	SUBSTR(name, 1, 4) AS first_four_letters
FROM
	products;

-- If we know that we are going to get data,
-- either from the leftmost part of the string 
-- or the rightmost part of the string
-- we can simply use left() and right()
SELECT
	LEFT(name, 4)
FROM
	products;

SELECT
	RIGHT(sku_code, 4)
FROM
	products;

-- concatenates the strings together
SELECT
	CONCAT(id, '-', name, '-', price)
FROM
	products;

-- also concatenates but with a separator
SELECT
	CONCAT_WS(':', id, name, price, sku_code, stock_quantity)
FROM
	products;

CREATE TABLE IF NOT EXISTS trim_demo (name CHAR(10));

INSERT INTO
	trim_demo (name)
VALUES
	('   Ali');

SELECT
	LENGTH(name)
FROM
	trim_demo;

SELECT
	LENGTH(TRIM(name))
FROM
	trim_demo;

-- replaces the part of string
SELECT
	REPLACE(sku_code, RIGHT(sku_code, 2), 'GG')
FROM
	products;

SELECT
	*
FROM
	products;

-- ALTER
-- Changing the name of table
CREATE TABLE tmp (
	tmp_var BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	tmp_name VARCHAR(100) CHECK (LENGTH(tmp_name) > 0)
);

INSERT INTO
	tmp (tmp_name)
VALUES
	('Ali');

SELECT
	*
FROM
	tmp;

ALTER TABLE tmp
RENAME TO students;

SELECT
	*
FROM
	students;

-- Renaming the column from tmp_var to student_id
ALTER TABLE students
RENAME COLUMN tmp_var TO student_id;

SELECT
	*
FROM
	students;

-- add a column to the table
ALTER TABLE students
ADD COLUMN age SMALLINT CHECK (age >= 0);

SELECT
	*
FROM
	students;

-- updating the already present column to add the age.
UPDATE students
SET
	age = 0
WHERE
	age IS NULL;

-- changing the name of column tmp_name
ALTER TABLE students
RENAME COLUMN tmp_name TO student_name;

ALTER TABLE students
RENAME COLUMN age TO student_age;

SELECT
	*
FROM
	students;

-- changing the data type of student_name from varchar(100) to varchar(40)
ALTER TABLE students
ALTER COLUMN student_name type VARCHAR(40);

SELECT
	*
FROM
	students;

-- adding a default value for the student_age
ALTER TABLE students
ALTER COLUMN student_age
SET DEFAULT 0;

INSERT INTO
	students (student_name)
VALUES
	('Yar Muhammad Uwaim');

INSERT INTO
	students (student_name, student_age)
VALUES
	('M. Saad Lodhi', 20);

SELECT DISTINCT
	*
FROM
	students;

CREATE EXTENSION if NOT EXISTS citext;

-- adding another column of email
ALTER TABLE students
ADD COLUMN student_email citext;

SELECT
	*
FROM
	students;

-- dropping a table column student_email
ALTER TABLE students
DROP COLUMN student_email;

SELECT
	*
FROM
	students;

-- dropping constraints of student_id as being primary key
ALTER TABLE students
DROP CONSTRAINT tmp_pkey;

-- adding constraints of student_id as being primary key again
ALTER TABLE students
ADD CONSTRAINT student_id_pkey PRIMARY KEY (student_id);

-- adding a column with the wrong data type
ALTER TABLE students
ADD COLUMN student_fee BIGINT DEFAULT 0;

SELECT
	*
FROM
	students;

-- now let's change the datatype to int
ALTER TABLE students
ALTER COLUMN student_fee type INTEGER;

SELECT
	*
FROM
	students;

-- dropping the default of student_fee
ALTER TABLE students
ALTER COLUMN student_fee
DROP DEFAULT;

SELECT
	*
FROM
	students;

INSERT INTO
	students (student_name, student_age)
VALUES
	('Ahmad', 23);

-- now adding the default back again
ALTER TABLE students
ALTER COLUMN student_fee
SET DEFAULT 0;

SELECT
	*
FROM
	students;

INSERT INTO
	students (student_name, student_age)
VALUES
	('Fateh Ali', 24);

-- adding a constraint of adult_check
ALTER TABLE students
ADD CONSTRAINT adult_check CHECK (student_age >= 18);

UPDATE students
SET
	student_age = 19
WHERE
	student_age = 0;

SELECT
	*
FROM
	students;

INSERT INTO
	students (student_name, student_age, student_fee)
VALUES
	('M Saad', 19, 32000);

-- case in postgresql
SELECT
	*
FROM
	products;

SELECT
	id,
	name,
	CASE
		WHEN (price > 1000) THEN 'Expensive'
		WHEN (price BETWEEN 500 AND 1000) THEN 'Moderate'
		ELSE 'Cheap'
	END AS price_tag
FROM
	products;

SELECT
	id,
	name,
	CASE
		WHEN is_available THEN 'In Stock'
		ELSE 'Out of Stock'
	END AS availability_status
FROM
	products;

CREATE TABLE IF NOT EXISTS schools (
	school_id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	name VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS principals (
	principle_id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	school_id BIGINT NOT NULL,
	FOREIGN KEY (school_id) REFERENCES schools (school_id)
);

INSERT INTO
	schools (name)
VALUES
	('Punjab School'),
	('Aitchison School'),
	('Grammar School'),
	('Danish School');

SELECT
	*
FROM
	schools;

INSERT INTO
	principals (name, school_id)
VALUES
	('Ali', 1),
	('Ahmad', 2),
	('Raza', 3),
	('Shahbaz', 4);

SELECT
	*
FROM
	principals;

SELECT
	s.school_id AS School_ID,
	s.name AS School_Name,
	p.name AS Principal_Name
FROM
	schools s
	INNER JOIN principals p ON s.school_id = p.school_id;

INSERT INTO
	schools (name)
VALUES
	('Govt. High School');

SELECT
	s.name AS school_name,
	p.name AS principal_name
FROM
	schools s
	CROSS JOIN principals p;

CREATE TABLE employees (
	employee_id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	employee_name VARCHAR(100) NOT NULL,
	manager_id INT NOT NULL,
	manager_name VARCHAR(100) NOT NULL
);

