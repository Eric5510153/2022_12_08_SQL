--offset...fetch next
--這是order by的子句

select * from 員工
order by 身份證字號
offset 3 rows

select * from 員工
order by 身份證字號
offset 3 rows
fetch next 2 rows only


select * from 員工
order by 身份證字號
offset 0 rows
fetch next 3 rows only
--------------- is null
select 身份證字號,姓名,isnull(電話,'未填寫') as 電話
from 員工

select 學號,姓名,性別,電話,isnull(cast(生日 as nvarchar),'未填寫')
from 學生

select 學號,姓名,性別,電話,生日,convert(nvarchar,生日,120 )
from 學生

----