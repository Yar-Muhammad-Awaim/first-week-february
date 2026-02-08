
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
	count(*) as count,
	avg(price) as av
FROM
	products
GROUP BY
	category;