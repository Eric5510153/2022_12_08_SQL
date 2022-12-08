select count(*) as 人數
from 學生

select 性別, count(*) as 人數
from 學生
group by 性別
-------------------
--group by
select 學分
from 課程

select distinct 學分
from 課程

select 學分
from 課程
group by 學分

--------------
select 性別, count(*) as 人數
from 學生
group by 性別

select 性別
from 學生

select count(*) as 人數
from 學生
-----------------------------
select count(*)
from 班級

--統計每位學生各選幾門課
select 學號,count(*)
from 班級
group by 學號

--統計每一門課程各被多少學生選
select 課程編號, count(*)
from 班級
group by 課程編號

--統計每一位教授有多少學生選課
select 教授編號, count(*)
from 班級
group by 教授編號

select 教授編號,課程編號, count(*)
from 班級
group by 教授編號,課程編號
--------------------------------------
select 學號,count(*) as 選課數
from 班級
group by 學號
having count(*)<3

select 學號,count(*) as 選課數
from 班級
group by 學號
order by 選課數 desc

--------------------------------------
--撰寫順序
--select
--from
--where
--group by
--having
--orderby

--執行順序
--1. from
--2. where
--3. group by
--4. having
--5. select
--6. order by

