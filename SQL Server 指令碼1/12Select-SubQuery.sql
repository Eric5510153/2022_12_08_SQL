--�l�d��(SubQuery)
--�d"�i�L��"����Ҹ��
select * from �Z��
where �Ǹ�=(select �Ǹ� from �ǥ�
where �m�W='�i�L��')


--�X�֬d��
select �Z��.*
from �Z�� inner join  �ǥ�
on �Z��.�Ǹ�=�ǥ�.�Ǹ�
where �ǥ�.�m�W='�i�L��'

--�Ьd�߭��ǭ��u���~���j��������u�������~��
select * 
from ���u
where  �~��>(select avg(�~��) from ���u)


--�X�֬d��
select a.�����Ҧr��,a.�m�W,a.�~��
from ���u as a inner join ���u as b
on a.�����Ҧr��!=b.�����Ҧr��
group by a.�����Ҧr��,a.�m�W,a.�~��
having a.�~��>avg(b.�~��)


select a.�����Ҧr��,a.�m�W,a.�~��
from ���u as a ,���u as b
group by a.�����Ҧr��,a.�m�W,a.�~��
having a.�~��>avg(b.�~��)

select a.�����Ҧr��,a.�m�W,a.�~��
from ���u as a cross join ���u as b
group by a.�����Ҧr��,a.�m�W,a.�~��
having a.�~��>avg(b.�~��)


-----�d�߭��X����u�O�б�-----
select ���u. *
from ���u  inner join �б� as b
on ���u.�����Ҧr��=b.�����Ҧr��

--------exists
select * 
from ���u
where exists (select*from �б� where ���u.�����Ҧr��=�б�.�����Ҧr��)
 
select*
from ���u
where �����Ҧr�� in (select �����Ҧr�� from �б� )

--���ǾǥͿ�FCS222�ҵ{
select * from �Z��
where �ҵ{�s��='CS222'

--in
select * from �ǥ�
where �Ǹ� in (select �Ǹ� from �Z��
where �ҵ{�s��='CS222')

--exists
select * from �ǥ�
where exists (select �Ǹ� from �Z��
where �ҵ{�s��='CS222' and �ǥ�.�Ǹ�=�Z��.�Ǹ�)

--���ǽҵ{�b221-S�ЫǤW��
--in
select * from �ҵ{
where �ҵ{�s�� in 
(select distinct �ҵ{�s�� from �Z��
where �Ы�='221-S')

--exists
select * from �ҵ{
where exists
(select distinct �ҵ{�s�� from �Z��
where �Ы�='221-S' and �ҵ{.�ҵ{�s��=�Z��.�ҵ{�s��)

--�d�߾ǥͩP�N���ҿ�Ҫ��ҵ{���
--�l�d��
--in
select * 
from �ҵ{
where �ҵ{�s�� in(select �ҵ{�s�� from �Z�� where �Ǹ� in
(select �Ǹ� from �ǥ� where �m�W='�P�N��'))


--exists
select * 
from �ҵ{
where exists (select �ҵ{�s�� from �Z�� where exists (select �Ǹ� from �ǥ� where �m�W='�P�N��' and �Z��.�Ǹ�=�ǥ�.�Ǹ� and
�Z��.�ҵ{�s��=�ҵ{.�ҵ{�s��))


--�X�֬d��
select co.*
from �ҵ{ as co
inner join �Z�� as c on c.�ҵ{�s��=co.�ҵ{�s��
inner join �ǥ� as s on c.�Ǹ�=s.�Ǹ�
where s.�m�W='�P�N��'

--�d�߾ǥͩP�N���S���諸�ҵ{���
--�l�d��
--in
select * from �ҵ{
where �ҵ{�s�� not in(
select �ҵ{�s�� from �Z�� where �Ǹ� in 
(select �Ǹ� from �ǥ� where �m�W='�P�N��'))

--exists
select * from �ҵ{
where not exists(
select �ҵ{�s�� from �Z�� 
where exists 
(select �Ǹ� from �ǥ� where �m�W='�P�N��' and �Z��.�Ǹ�=�ǥ�.�Ǹ� 
and �Z��.�ҵ{�s��=�ҵ{.�ҵ{�s��))

--�X�֬d��
select * from �ҵ{
except
select co.*
from �ҵ{ as co
inner join �Z�� as c on c.�ҵ{�s��=co.�ҵ{�s��
inner join �ǥ� as s on c.�Ǹ�=s.�Ǹ�
where s.�m�W='�P�N��'
-----��X�~��j���b�x�_�Ҧ����u�~�ꪺ���u
select*
from ���u 
where �~��>=(select top 1 �~�� from ���u where ����='�x�_' order by �~�� desc ) --desc����

--all

select *
from ���u
where �~��>=all(select �~�� from ���u where ����='�x�_')

--��X�~��j���b�x�_���@���u�~����u

select *
from ���u
where �~��>=some(select �~�� from ���u where ����='�x�_')


select *
from ���u
where �~��>=(select top 1 �~�� from ���u where ����='�x�_' order by �~�� asc ) --asc ���W

select *
from ���u
where �~��>=(select top 1 �~�� from ���u where ����='�x�_' order by �~��  )

