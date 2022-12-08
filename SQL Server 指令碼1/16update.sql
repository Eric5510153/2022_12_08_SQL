update 課程
set 名稱='計算機概論'
where 課程編號='CS101'

update 課程
set 學分=4 ,名稱='互動式網頁程式設計'
where 課程編號='CS205'

update 課程
set 學分=30
where 課程編號 in(
select 課程編號
from 班級
group by 課程編號
having count(*)>=3)



