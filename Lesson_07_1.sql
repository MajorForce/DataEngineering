
drop database if exists city;
create database if not exists city character set = utf8mb4;
use city;

drop table if exists cities;
create table cities (
label varchar(50) primary key,
name varchar(50)
);
	
drop table if exists flights;
create table flights (
	id serial primary key,
	`from` varchar(50),
	`to` varchar(50),
	foreign key (`from`) references cities(label),
	foreign key (`to`) references cities(label)
);

INSERT INTO `cities` (`label`, `name`) VALUES ('moscow', '������');
INSERT INTO `cities` (`label`, `name`) VALUES ('irkutsk', '�������');
INSERT INTO `cities` (`label`, `name`) VALUES ('novgorod', '��������');
INSERT INTO `cities` (`label`, `name`) VALUES ('kazan', '������');
INSERT INTO `cities` (`label`, `name`) VALUES ('omsk', '����');

INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'moscow', 'omsk');
INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'novgorod', 'kazan');
INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'irkutsk', 'moscow');
INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'omsk', 'irkutsk');
INSERT INTO `flights` (`id`, `from`, `to`) VALUES (null, 'moscow', 'kazan');

-- ����� ������� ������� ������ flights (id, from, to) � ������� ������� cities (label, name).
-- ���� from, to � label �������� ���������� �������� �������, ���� name � �������. �������� ������ ������ flights � �������� ���������� �������.


select
	f.id as '����� �����',
	ci1.name as '����� �����������',
	ci2.name as '����� ��������'
from flights as f 
left join cities as ci1
on ci1.label = f.`from`
left join cities as ci2
on ci2.label = f.`to`





