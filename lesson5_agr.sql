-- task 1
-- Подсчитайте средний возраст пользователей в таблице users.

SELECT * FROM users;
select AVG((to_days(now())-to_days(birthday_at))/365.25) as age from users;
-- SELECT AVG(timestampdiff (YEAR,birthday_at,NOW())) as age from users;

-- task 2
/*Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения.*/

SELECT YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at) from users;
SELECT DATE(CONCAT_WS('-',YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))) from users;
SELECT DATE_FORMAT(DATE(CONCAT_WS('-',YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))),'%W') from users;
SELECT DATE_FORMAT(DATE(CONCAT_WS('-',YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))),'%W') as day from users;
SELECT DATE_FORMAT(DATE(CONCAT_WS('-',YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))),'%W') as day from users group by day;
SELECT DATE_FORMAT(DATE(CONCAT_WS('-',YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))),'%W') as day,COUNT(*) as total from users group by day ORDER by total desc;