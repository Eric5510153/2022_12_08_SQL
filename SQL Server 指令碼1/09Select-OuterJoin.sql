--�~���X�֬d��(outer join)
select * from ���u
select * from �б�

select *
from ���u inner join �б�
on ���u.�����Ҧr��=�б�.�����Ҧr��

--�C�X���ǭ��u���O�б�
select *
from ���u left outer join �б�
on ���u.�����Ҧr��=�б�.�����Ҧr��


select *
from �б� right outer join ���u
on ���u.�����Ҧr��=�б�.�����Ҧr��


select ���u.*
from ���u left outer join �б�
on ���u.�����Ҧr��=�б�.�����Ҧr��
where �б�.�б½s�� is null
--------------------------------------
--��X�Ҧ��|����Ҫ��ǥ͸��
select �ǥ�.* 
from �Z�� right outer join �ǥ�
on �Z��.�Ǹ�=�ǥ�.�Ǹ�
where �Z��.�Ǹ� is null


--��X�Ҧ��|���Q�諸�ҵ{���
select �ҵ{.* 
from �Z�� right outer join �ҵ{
on �Z��.�ҵ{�s��=�ҵ{.�ҵ{�s��
where �Z��.�ҵ{�s�� is null


--��X�Ҧ��|���Q�諸�б¸��
select �б�.* 
from �Z�� right outer join �б�
on �Z��.�б½s��=�б�.�б½s��
where �Z��.�б½s�� is null

select �б�.* 
from �Z�� right join �б�
on �Z��.�б½s��=�б�.�б½s��
where �Z��.�б½s�� is null

--------------------------------------------------
--full join
select * 
from �Z�� full join �ǥ�
on �Z��.�Ǹ�=�ǥ�.�Ǹ�

--cross join
select * 
from �Z�� cross join �ǥ�
--on �Z��.�Ǹ�=�ǥ�.�Ǹ�

-------------------------------
--isnull():�B�znull�Ȫ����
select * from ���u


select �����Ҧr��,�m�W,����,��D,isnull(�q��,'�|����g'), �~��,�O�I,���|
from ���u


