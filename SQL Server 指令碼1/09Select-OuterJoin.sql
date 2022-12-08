--外部合併查詢(outer join)
select * from 員工
select * from 教授

select *
from 員工 inner join 教授
on 員工.身份證字號=教授.身份證字號

--列出哪些員工不是教授
select *
from 員工 left outer join 教授
on 員工.身份證字號=教授.身份證字號


select *
from 教授 right outer join 員工
on 員工.身份證字號=教授.身份證字號


select 員工.*
from 員工 left outer join 教授
on 員工.身份證字號=教授.身份證字號
where 教授.教授編號 is null
--------------------------------------
--找出所有尚未選課的學生資料
select 學生.* 
from 班級 right outer join 學生
on 班級.學號=學生.學號
where 班級.學號 is null


--找出所有尚未被選的課程資料
select 課程.* 
from 班級 right outer join 課程
on 班級.課程編號=課程.課程編號
where 班級.課程編號 is null


--找出所有尚未被選的教授資料
select 教授.* 
from 班級 right outer join 教授
on 班級.教授編號=教授.教授編號
where 班級.教授編號 is null

select 教授.* 
from 班級 right join 教授
on 班級.教授編號=教授.教授編號
where 班級.教授編號 is null

--------------------------------------------------
--full join
select * 
from 班級 full join 學生
on 班級.學號=學生.學號

--cross join
select * 
from 班級 cross join 學生
--on 班級.學號=學生.學號

-------------------------------
--isnull():處理null值的顯示
select * from 員工


select 身份證字號,姓名,城市,街道,isnull(電話,'尚未填寫'), 薪水,保險,扣稅
from 員工


