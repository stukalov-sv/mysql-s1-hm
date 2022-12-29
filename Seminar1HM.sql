/* 1.
 * Создайте таблицу с мобильными телефонами, используя графический интерфейс.
 * Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ
 */
 
DROP DATABASE IF EXISTS lesson_1_hm;
CREATE DATABASE lesson_1_hm;
USE lesson_1_hm;

DROP TABLE IF EXISTS mobilephones;
CREATE TABLE mobilephones (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	product_name VARCHAR(50),
	manufacturer VARCHAR(50),
	product_count INT,
	price FLOAT
);

INSERT INTO mobilephones 
(product_name, manufacturer, product_count, price)
VALUES
('iPhone X','Apple',3,76000),
('iPhone 8','Apple',2,51000),
('Galaxy S9','Samsung',2,56000),
('Galaxy S8','Samsung',1,41000),
('P20 Pro','Huawei',5,36000);

SELECT *
FROM
mobilephones;

/* 2.
 * Выведите название, производителя и цену для товаров, 
 * количество которых превышает 2 (SQL - файл, скриншот, либо сам код)
 */

SELECT
product_name,
manufacturer,
price  
FROM
mobilephones
WHERE
product_count > 2;

/* 3.
 * Выведите весь ассортимент товаров марки “Samsung”
 * */

SELECT *
FROM
mobilephones
WHERE
manufacturer = 'Samsung';

/* 4. С помощью регулярных выражений найти 
 * (можно использовать операторы “LIKE”, “RLIKE”):
 */
 -- 4.1.* Товары, в которых есть упоминание "Iphone"

SELECT *
FROM
mobilephones
WHERE
product_name LIKE '%iPhone%';

-- 4.2.* Товары, в которых есть упоминание "Galaxy"

SELECT *
FROM
mobilephones
WHERE
product_name LIKE '%Galaxy%';

-- 4.3.* Товары, в названии которых есть ЦИФРЫ

SELECT *
FROM
mobilephones
WHERE
CONVERT (product_name, CHAR(128)) RLIKE '[0-9]'; 

-- 4.4.* Товары, в названии которых есть ЦИФРА "8"

SELECT *
FROM
mobilephones
WHERE
product_name LIKE '%8%';
