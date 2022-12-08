--CTE(common table expression)


with test
as
(
   select p.*,e.姓名,e.薪水
   from 員工 as e inner join 教授 as p
   on e.身份證字號=p.身份證字號
)
select * from test

--Recursive(遞迴)

with 主管階層
as
(
     select 員工字號,姓名,1 as 階層 
     from 主管 where 主管字號 is null
     union all
     select 主管.員工字號,主管.姓名,+1 as 階層
     from 主管  inner join 主管階層  on 主管.主管字號=主管階層.員工字號 
)
select * from 主管階層 order by 階層

---誰的主字號=A123456789
--找到'A222222222',E444006666

--誰的主字號=A222222222 或E444006666 屬第三階
--D333300333,H098765432,D444403333,F213456780

