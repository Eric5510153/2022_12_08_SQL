--觸發程序Trigger
--與預存程序一樣是一個預先寫好的程式
--但它無法直接呼叫執行，而是在某個時機點會自己觸發執行

select * from 客戶

insert into 客戶
values('C999','王小明','07-8888888')


update 客戶
set 姓名='aaa', 電話='bbb'
output inserted.客戶編號, inserted.姓名 as NewName, inserted.電話 as NewTel, deleted.姓名, deleted.電話
where 客戶編號='C010'
---------------------------------------------------------

create trigger showCustomerData on 客戶
after update
as
begin
	select inserted.客戶編號, inserted.姓名 as NewName, inserted.電話 as NewTel
	from inserted
	
	select deleted.客戶編號, deleted.姓名 as OldName, deleted.電話 as OldTel
	from deleted
	
end



update 客戶
set 姓名='1111', 電話='222'
where 客戶編號='C999'


insert into 客戶
values('C998','王大明','07-1111111')

----------------------------------------

select * from 課程


create trigger ShowNewCourse on 課程
after insert
as
begin

	select * from 課程
end 

insert into 課程
values('CS998','aaaa',2)

