--��ƪ��z��
select *
from �ǥ�
where �ʧO='�k'


select *
from �ǥ�
where �m�W='���|�w'



select *
from �ǥ�
where �Ǹ�='S002'


select *
from ���u
where �~��>50000


select *
from ���u
where �~��>=50000


select *
from �ǥ�
where �ͤ�>='1991-1/1'

--��X�S����g�ͤ骺�H
select *
from �ǥ�
where �ͤ� is null



select *
from ���u
where �q�� is null
-----------------------------
--like�B��l(�ҽk�d��)
--%  :�N��0~n�ӥ��N�r��
--_  :�N��1�ӥ��N�r�� 
--[] :��b���A���̪����N�r

select *
from �ǥ�
where �m�W like '��%'


select *
from �ǥ�
where �m�W like '��_'

select *
from �ǥ�
where �m�W like '��__'

select *
from �ǥ�
where �m�W like '��___'

select *
from �б�

select *
from �б�
where ��t like 'c%s'

select *
from �б�
where ��t like 'c_s'


select *
from �б�
where ��t like '%[mdkfj4i]%'

select *
from �б�
where ��t like '%m%' or ��t like '%d%' or ��t like '%k%' or ��t like '%f%' or ��t like '%j%' or ��t like '%4%' or ��t like '%i%'


select *
from �б�
where ��t like '%[A-F0-57-9]%'

select *
from �б�
where ��t like '%[ABCDEF012345789]%'

--------------------------------
--between...and...�B��
select *
from ���u
where �~��>=25000 and �~��<=55000


select *
from ���u
where �~�� between 25000 and 55000
----------------
--in �B��l
select *
from �ҵ{
where �ҵ{�s��='CS101' or �ҵ{�s��='CS213' or �ҵ{�s��='CS349' or �ҵ{�s��='CS999'

select *
from �ҵ{
where �ҵ{�s�� in('CS101' ,'CS213','CS349','CS999')

