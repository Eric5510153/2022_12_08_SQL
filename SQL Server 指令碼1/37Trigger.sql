create trigger checkOrderCourse on �Z��
after insert
as
begin 
   declare @num int 

    select @num=count(*)
    from �Z��
    where �Ǹ�=(select �Ǹ� from inserted)
	if @num>5
	begin
	print'�z�w�ﺡ5����'
	rollback
	end
end
go
-----------------------
select *from �Z�� where �Ǹ�='S001'

insert into �Z��
values('I002','S001','CS111','2023-01-10','221-S')

select *from �Z�� where �Ǹ�='S002'
insert into �Z��
values('I003','S002','CS121','2023-01-10','221-M')

