--offset...fetch next
--�o�Oorder by���l�y

select * from ���u
order by �����Ҧr��
offset 3 rows

select * from ���u
order by �����Ҧr��
offset 3 rows
fetch next 2 rows only


select * from ���u
order by �����Ҧr��
offset 0 rows
fetch next 3 rows only
--------------- is null
select �����Ҧr��,�m�W,isnull(�q��,'����g') as �q��
from ���u

select �Ǹ�,�m�W,�ʧO,�q��,isnull(cast(�ͤ� as nvarchar),'����g')
from �ǥ�

select �Ǹ�,�m�W,�ʧO,�q��,�ͤ�,convert(nvarchar,�ͤ�,120 )
from �ǥ�

----