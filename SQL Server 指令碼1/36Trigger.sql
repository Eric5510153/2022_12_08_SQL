--Ĳ�o�{��Trigger
--�P�w�s�{�Ǥ@�ˬO�@�ӹw���g�n���{��
--�����L�k�����I�s����A�ӬO�b�Y�Ӯɾ��I�|�ۤvĲ�o����

select * from �Ȥ�

insert into �Ȥ�
values('C999','���p��','07-8888888')


update �Ȥ�
set �m�W='aaa', �q��='bbb'
output inserted.�Ȥ�s��, inserted.�m�W as NewName, inserted.�q�� as NewTel, deleted.�m�W, deleted.�q��
where �Ȥ�s��='C010'
---------------------------------------------------------

create trigger showCustomerData on �Ȥ�
after update
as
begin
	select inserted.�Ȥ�s��, inserted.�m�W as NewName, inserted.�q�� as NewTel
	from inserted
	
	select deleted.�Ȥ�s��, deleted.�m�W as OldName, deleted.�q�� as OldTel
	from deleted
	
end



update �Ȥ�
set �m�W='1111', �q��='222'
where �Ȥ�s��='C999'


insert into �Ȥ�
values('C998','���j��','07-1111111')

----------------------------------------

select * from �ҵ{


create trigger ShowNewCourse on �ҵ{
after insert
as
begin

	select * from �ҵ{
end 

insert into �ҵ{
values('CS998','aaaa',2)

