update �ҵ{
set �W��='�p�������'
where �ҵ{�s��='CS101'

update �ҵ{
set �Ǥ�=4 ,�W��='���ʦ������{���]�p'
where �ҵ{�s��='CS205'

update �ҵ{
set �Ǥ�=30
where �ҵ{�s�� in(
select �ҵ{�s��
from �Z��
group by �ҵ{�s��
having count(*)>=3)



