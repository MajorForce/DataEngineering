-- СЛОЖНЫЕ ЗАПРОСЫ

-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

select
	u.id as user_id,
	u.name
from users as u
right join orders as o
on o.user_id = u.id
group by u.id


-- Выведите список товаров products и разделов catalogs, который соответствует товару.

select
	p.name as продукт,
	c.name as категория
from products as p
join catalogs as c
on p.catalog_id = c.id





