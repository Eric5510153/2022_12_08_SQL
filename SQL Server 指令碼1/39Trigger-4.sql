--DDL��Trigger
create trigger readOnlyTable on database
for drop_table, alter_table
as
begin
	rollback
end


drop table �ǥ�2
----------------------
--���θ�ƮwTrigger
disable trigger readOnlyTable on database

--����Trigger
alter table �ҵ{
	disable trigger showNewCourse


--�ҥ�Trigger
alter table �ҵ{
	enable trigger showNewCourse



--�ҥθ�ƮwTrigger
enable trigger readOnlyTable on database
