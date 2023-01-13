--Instead Trigger
--把原來的操作取代掉

--當我要新增課程,若新增時發現該課程已存在,我就改以「修改課程資料」取代原來的新增動作

--after trigger
--instead trigger


create trigger add_Course on 課程
instead of insert
as
begin
	--檢查所新增的課程資料是否存在(只認P.K)
	if exists(    select * from 課程 where 課程編號=(select 課程編號 from inserted)     )
	begin
		--p.k重複,把insert 取代為 update
		update 課程
		set 名稱=inserted.名稱, 學分=inserted.學分
		from 課程 inner join inserted on 課程.課程編號=inserted.課程編號
	end
	else
	begin
		--仍執行 insert

		insert into 課程
		select * from inserted
	end
end


insert into 課程
values('CS888','aaaaa',2)


