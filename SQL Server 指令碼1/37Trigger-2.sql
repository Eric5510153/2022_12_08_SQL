--after trigger
--�C�@��ǥͳ̦h�u���5����,�Y�W�L5���٥[��,�h�������s�J��Ʈw

alter trigger checkOrderCourse on �Z��
after insert
as
begin
	declare @num int

	select @num=count(*)
	from �Z��
	where �Ǹ�=(select �Ǹ� from inserted)

	if @num>5   --��ܸӥͤw�ﺡ5����
	begin
		print '�z�w�g�ﺡ5����,�Х��h���A��[��'
		rollback
	end 

end 
go
-----------------------------------

select * from �Z�� where �Ǹ�='S002'


insert into �Z��
values('I002','S002','CS349','2023-1-10','221-S')
-----------------------------------------------------
--�Y�ק�ҾǤ�,���o�C���Ǥ���
create trigger checkCredit on �ҵ{
after update
as
begin
	declare @old int ,@new int
	select @new=�Ǥ� from inserted
	select  @old=�Ǥ� from deleted

	if @new<@old
	begin
		print '�Ǥ��Ƥ��i�C���Ǥ�'
		rollback
	end

end

--����
select * from �ҵ{

update �ҵ{
set �Ǥ�=2
where �ҵ{�s��='CS998'
--------------------------------------------
select * from �ǥ�

select * from ���u
--�Y�R�����u��Ʈ�,�ӭ��u�]�O�ǥ�,�h���o�R��

create trigger checkEmployeeIsStudent on ���u
after delete
as
begin
	if exists(  select * from �ǥ� where �m�W=(select �m�W from deleted)  )
	begin
		print '�ӭ��u�ثe���NŪ����,���o�R��'
		rollback
	end

end


delete from ���u
where �����Ҧr��='F332213046'











