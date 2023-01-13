--DDL的Trigger
create trigger readOnlyTable on database
for drop_table, alter_table
as
begin
	rollback
end


drop table 學生2
----------------------
--停用資料庫Trigger
disable trigger readOnlyTable on database

--停用Trigger
alter table 課程
	disable trigger showNewCourse


--啟用Trigger
alter table 課程
	enable trigger showNewCourse



--啟用資料庫Trigger
enable trigger readOnlyTable on database
