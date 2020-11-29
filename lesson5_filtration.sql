
-- задание 1
/*Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
Заполните их текущими датой и временем.*/

SELECT * FROM users;
UPDATE users SET created_at = NOW(), updated_at = NOW();

-- задание 2 
/*Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и
в них долгое время помещались значения в формате 20.10.2017 8:10. Н
еобходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.*/

desc users;
ALTER table users modify column created_at VARCHAR (255);

INSERT into users (id,name,birthday_at,created_at) values (7,'sasha','1967-01-01','20.10.2017 8:10');

 UPDATE
	users
SET
	created_at = STR_TO_DATE (created_at, '%d.%m.%Y %k:%i')
WHERE
	created_at RLIKE '^[0-9]{2}\\.[0-9]';


ALTER table users change created_at created_at datetime default current_timestamp;


-- задание 3
/*
В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
чтобы они выводились в порядке увеличения значения value. 
Однако нулевые запасы должны выводиться в конце, после всех записей.
*/

SELECT * FROM storehouses_products;
desc storehouses_products;
ALTER table storehouses_products modify column id serial;
INSERT into storehouses_products (storehouse_id,product_id,value) values ( 1,543,0),(1,789,2500),(1,3432,0),(1,836,30),(1,719,500),(1,638,1);
SELECT * from storehouses_products order by value =0,value;



