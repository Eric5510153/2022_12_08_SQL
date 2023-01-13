--after trigger
--每一位學生最多只能選5門課,若超過5門還加選,則不讓之存入資料庫

alter trigger checkOrderCourse on 班級
after insert
as
begin
	declare @num int

	select @num=count(*)
	from 班級
	where 學號=(select 學號 from inserted)

	if @num>5   --表示該生已選滿5門課
	begin
		print '您已經選滿5門課,請先退選後再行加選'
		rollback
	end 

end 
go
-----------------------------------

select * from 班級 where 學號='S002'


insert into 班級
values('I002','S002','CS349','2023-1-10','221-S')
-----------------------------------------------------
--若修改課學分,不得低於原學分數
create trigger checkCredit on 課程
after update
as
begin
	declare @old int ,@new int
	select @new=學分 from inserted
	select  @old=學分 from deleted

	if @new<@old
	begin
		print '學分數不可低於原學分'
		rollback
	end

end

--測試
select * from 課程

update 課程
set 學分=2
where 課程編號='CS998'
--------------------------------------------
select * from 學生

select * from 員工
--若刪除員工資料時,該員工也是學生,則不得刪除

create trigger checkEmployeeIsStudent on 員工
after delete
as
begin
	if exists(  select * from 學生 where 姓名=(select 姓名 from deleted)  )
	begin
		print '該員工目前正就讀本校,不得刪除'
		rollback
	end

end


delete from 員工
where 身份證字號='F332213046'











