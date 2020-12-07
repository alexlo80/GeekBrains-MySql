-- 1.Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT * from users u2 ;
SELECT * from orders o ;
INSERT into orders (user_id )values (1),(1),(2),(3);
SELECT DISTINCT u.name FROM users u JOIN orders o2 ON u.id =o2.user_id ;


-- 2.Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT p.name,c.name FROM catalogs c JOIN products p ON c.id =p.catalog_id ;
-- или
SELECT name,(SELECT name FROM catalogs c2 where c2.id = p2.catalog_id)as catalog_name FROM products p2;



