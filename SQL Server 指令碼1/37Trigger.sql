create trigger checkOrderCourse on 班級
after insert
as
begin 
   declare @num int 

    select @num=count(*)
    from 班級
    where 學號=(select 學號 from inserted)
	if @num>5
	begin
	print'您已選滿5門課'
	rollback
	end
end
go
-----------------------
select *from 班級 where 學號='S001'

insert into 班級
values('I002','S001','CS111','2023-01-10','221-S')

select *from 班級 where 學號='S002'
insert into 班級
values('I003','S002','CS121','2023-01-10','221-M')

