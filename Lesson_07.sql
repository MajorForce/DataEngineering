-- ������� �������

-- ��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.

select
	u.id as user_id,
	u.name,
	o.id as order_id
from users as u
join orders as o
on o.user_id = u.id
group by u.id
where o.id is not null


-- �������� ������ ������� products � �������� catalogs, ������� ������������� ������.

select
	p.name as �������,
	c.name as ���������
from products as p
join catalogs as c
on p.catalog_id = c.id






-- (�� �������) ����� ������� ������� ������ flights (id, from, to) � ������� ������� cities (label, name).
-- ���� from, to � label �������� ���������� �������� �������, ���� name � �������. �������� ������ ������ flights � �������� ���������� �������.


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
	
	INSERT INTO `cities` (`label`, `name`) VALUES ('moscow', '������');
	INSERT INTO `cities` (`label`, `name`) VALUES ('irkutsk', '�������');
	INSERT INTO `cities` (`label`, `name`) VALUES ('novgorod', '��������');
	INSERT INTO `cities` (`label`, `name`) VALUES ('kazan', '������');
	INSERT INTO `cities` (`label`, `name`) VALUES ('omsk', '����');

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
	INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'omsk', '��irkutsk����');
	INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'moscow', 'kazan');


