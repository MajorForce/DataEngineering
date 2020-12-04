-- ������� �������

-- ��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.

select
	u.id as user_id,
	u.name
from users as u
right join orders as o
on o.user_id = u.id
group by u.id


-- �������� ������ ������� products � �������� catalogs, ������� ������������� ������.

select
	p.name as �������,
	c.name as ���������
from products as p
join catalogs as c
on p.catalog_id = c.id





