
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT 
COUNT(*) as total, 
  (SELECT gender FROM profiles p2 WHERE p2.user_id = l2.user_id) AS gender 
    FROM likes l2 
    group by gender ;
   
  -- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей. 

SELECT COUNT(*) as total, l.target_id
FROM likes l, (
     SELECT user_id,timestampdiff (SECOND ,birthday,NOW()) AS age FROM profiles p order by age limit 10) p
where l.target_id = p.user_id 
group by l.target_id WITH ROLLUP;


-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).

-- выбрал 11 среди тех, кто не ставит лайки и не запрашивает дружбу

SELECT p2.user_id
FROM profiles p2 
where p2.user_id not in (
SELECT user_id FROM likes l2 ) and p2.user_id not in (
SELECT user_id FROM friendship f2 ) ;

