-- ЗАДАНИЯ
-- Урок 6. Вебинар. Операторы, фильтрация, сортировка и ограничение. Агрегация данных


-- 1. Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.


select
	(select concat(lastname, ' ', firstname) from users where id = buddy.buddy_id) as buddy_name,
	count(*) as total
	from (select
		case
			when to_user_id = 62 then from_user_id
			when from_user_id = 62 then to_user_id
		end as buddy_id from messages) as buddy
		where buddy_id is not null group by buddy_id order by total desc limit 1;


-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- likes for posts
select 
	sum(likes) as total from(
select
	(select count(*) from post_likes pl where post_id = id) as likes
from posts as p where user_id in (select * from (select id from users order by birthday desc limit 10) as young))
as young_user_likes;

-- likes for photos
select 
	sum(likes) as total2 from(
select
	(select count(*) from photo_likes phl where photo_id = id) as likes2
from posts as p where user_id in (select * from (select id from users order by birthday desc limit 10) as young2))
as young_user_likes2;

-- likes for users
select
	sum(likes) as total3 from(
select
	(select count(*) from user_likes ul where user_id = id) as likes3
from posts as p where user_id in (select * from (select id from users order by birthday desc limit 10) as young3))
as young_user_likes3;

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

select
	(select gender from users u where id = pl.user_id) as sex,
	count(*) as likes
from post_likes pl group by sex order by likes desc limit 1


-- 4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.


select
	id,
	concat(lastname, ' ', firstname),
	(select count(id) from messages m where m.from_user_id = u.id) +
	(select count(id) from posts p where p.user_id = u.id) +
	(select count(id) from photos ph where ph.user_id = u.id) +
	(select count(*) from (select initiator_user_id from friend_requests where target_user_id = u.id and status = 'approved'
	union
	select target_user_id from friend_requests where initiator_user_id = u.id and status = 'approved') as fr_list) as activity
from users u order by activity desc limit 10



