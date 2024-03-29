--資料的篩選
select *
from 學生
where 性別='男'


select *
from 學生
where 姓名='陳會安'



select *
from 學生
where 學號='S002'


select *
from 員工
where 薪水>50000


select *
from 員工
where 薪水>=50000


select *
from 學生
where 生日>='1991-1/1'

--找出沒有填寫生日的人
select *
from 學生
where 生日 is null



select *
from 員工
where 電話 is null
-----------------------------
--like運算子(模糊查詢)
--%  :代表0~n個任意字元
--_  :代表1個任意字元 
--[] :放在中括弧裡的任意字

select *
from 學生
where 姓名 like '陳%'


select *
from 學生
where 姓名 like '陳_'

select *
from 學生
where 姓名 like '陳__'

select *
from 學生
where 姓名 like '陳___'

select *
from 教授

select *
from 教授
where 科系 like 'c%s'

select *
from 教授
where 科系 like 'c_s'


select *
from 教授
where 科系 like '%[mdkfj4i]%'

select *
from 教授
where 科系 like '%m%' or 科系 like '%d%' or 科系 like '%k%' or 科系 like '%f%' or 科系 like '%j%' or 科系 like '%4%' or 科系 like '%i%'


select *
from 教授
where 科系 like '%[A-F0-57-9]%'

select *
from 教授
where 科系 like '%[ABCDEF012345789]%'

--------------------------------
--between...and...運算
select *
from 員工
where 薪水>=25000 and 薪水<=55000


select *
from 員工
where 薪水 between 25000 and 55000
----------------
--in 運算子
select *
from 課程
where 課程編號='CS101' or 課程編號='CS213' or 課程編號='CS349' or 課程編號='CS999'

select *
from 課程
where 課程編號 in('CS101' ,'CS213','CS349','CS999')

