-- СЛОЖНЫЕ ЗАПРОСЫ

-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

select
	u.id as user_id,
	u.name,
	o.id as order_id
from users as u
join orders as o
on o.user_id = u.id
group by u.id
where o.id is not null


-- Выведите список товаров products и разделов catalogs, который соответствует товару.

select
	p.name as продукт,
	c.name as категория
from products as p
join catalogs as c
on p.catalog_id = c.id






-- (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
-- Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.


-- drop database if exists city;
-- create database if not exists city character set = utf8mb4;

drop database if exists city;
create database if not exists city character set = utf8mb4;
use city;

drop table if exists cities
create table cities(
	label varchar(50),
	name varchar(50)
	);
	
	INSERT INTO `cities` (`label`, `name`) VALUES ('moscow', 'Москва');
	INSERT INTO `cities` (`label`, `name`) VALUES ('irkutsk', 'Иркутск');
	INSERT INTO `cities` (`label`, `name`) VALUES ('novgorod', 'Новгород');
	INSERT INTO `cities` (`label`, `name`) VALUES ('kazan', 'Казань');
	INSERT INTO `cities` (`label`, `name`) VALUES ('omsk', 'Омск');

drop table if exists flights;
create table flights(
	id varchar(50) primary key,
	from varchar(50),
	to varchar(50),
	foreign key ('from') references cities(id),
	foreign key ('to') references cities(id)
	);

	INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'moscow', 'omsk');
	INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'novgorod', 'kazan');
	INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'irkutsk', 'moscow');
	INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'omsk', 'Каirkutskзань');
	INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'moscow', 'kazan');


