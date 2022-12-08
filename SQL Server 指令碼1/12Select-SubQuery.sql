--子查詢(SubQuery)
--查"張無忌"的選課資料
select * from 班級
where 學號=(select 學號 from 學生
where 姓名='張無忌')


--合併查詢
select 班級.*
from 班級 inner join  學生
on 班級.學號=學生.學號
where 學生.姓名='張無忌'

--請查詢哪些員工的薪水大於全部員工的平均薪資
select * 
from 員工
where  薪水>(select avg(薪水) from 員工)


--合併查詢
select a.身份證字號,a.姓名,a.薪水
from 員工 as a inner join 員工 as b
on a.身份證字號!=b.身份證字號
group by a.身份證字號,a.姓名,a.薪水
having a.薪水>avg(b.薪水)


select a.身份證字號,a.姓名,a.薪水
from 員工 as a ,員工 as b
group by a.身份證字號,a.姓名,a.薪水
having a.薪水>avg(b.薪水)

select a.身份證字號,a.姓名,a.薪水
from 員工 as a cross join 員工 as b
group by a.身份證字號,a.姓名,a.薪水
having a.薪水>avg(b.薪水)


-----查詢哪幾位員工是教授-----
select 員工. *
from 員工  inner join 教授 as b
on 員工.身份證字號=b.身份證字號

--------exists
select * 
from 員工
where exists (select*from 教授 where 員工.身份證字號=教授.身份證字號)
 
select*
from 員工
where 身份證字號 in (select 身份證字號 from 教授 )

--哪些學生選了CS222課程
select * from 班級
where 課程編號='CS222'

--in
select * from 學生
where 學號 in (select 學號 from 班級
where 課程編號='CS222')

--exists
select * from 學生
where exists (select 學號 from 班級
where 課程編號='CS222' and 學生.學號=班級.學號)

--哪些課程在221-S教室上課
--in
select * from 課程
where 課程編號 in 
(select distinct 課程編號 from 班級
where 教室='221-S')

--exists
select * from 課程
where exists
(select distinct 課程編號 from 班級
where 教室='221-S' and 課程.課程編號=班級.課程編號)

--查詢學生周杰輪所選課的課程資料
--子查詢
--in
select * 
from 課程
where 課程編號 in(select 課程編號 from 班級 where 學號 in
(select 學號 from 學生 where 姓名='周杰輪'))


--exists
select * 
from 課程
where exists (select 課程編號 from 班級 where exists (select 學號 from 學生 where 姓名='周杰輪' and 班級.學號=學生.學號 and
班級.課程編號=課程.課程編號))


--合併查詢
select co.*
from 課程 as co
inner join 班級 as c on c.課程編號=co.課程編號
inner join 學生 as s on c.學號=s.學號
where s.姓名='周杰輪'

--查詢學生周杰輪沒有選的課程資料
--子查詢
--in
select * from 課程
where 課程編號 not in(
select 課程編號 from 班級 where 學號 in 
(select 學號 from 學生 where 姓名='周杰輪'))

--exists
select * from 課程
where not exists(
select 課程編號 from 班級 
where exists 
(select 學號 from 學生 where 姓名='周杰輪' and 班級.學號=學生.學號 
and 班級.課程編號=課程.課程編號))

--合併查詢
select * from 課程
except
select co.*
from 課程 as co
inner join 班級 as c on c.課程編號=co.課程編號
inner join 學生 as s on c.學號=s.學號
where s.姓名='周杰輪'
-----找出薪資大於住在台北所有員工薪資的員工
select*
from 員工 
where 薪水>=(select top 1 薪水 from 員工 where 城市='台北' order by 薪水 desc ) --desc遞減

--all

select *
from 員工
where 薪水>=all(select 薪水 from 員工 where 城市='台北')

--找出薪資大於住在台北任一員工薪資員工

select *
from 員工
where 薪水>=some(select 薪水 from 員工 where 城市='台北')


select *
from 員工
where 薪水>=(select top 1 薪水 from 員工 where 城市='台北' order by 薪水 asc ) --asc 遞增

select *
from 員工
where 薪水>=(select top 1 薪水 from 員工 where 城市='台北' order by 薪水  )

