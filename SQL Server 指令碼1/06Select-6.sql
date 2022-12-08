select *
from OrderDetails

select *,UnitPrice*Quantity*(1-Discount) as 小計
from OrderDetails


select OrderID,count(*)
from OrderDetails
group by OrderID


--統計每一種商品被買過幾次
select ProductID,count(*) as 被買次數
from OrderDetails
group by ProductID


--按照商品被購買次數遞減排序
select  ProductID,count(*) as 被買次數
from OrderDetails
group by ProductID
order by 被買次數 desc

--抓出前10名熱門商品
select top 10 with ties ProductID,count(*) as 被買次數
from OrderDetails
group by ProductID
order by 被買次數 desc

--統計每一種商品的營業額,並且遞減排序
select ProductID, sum(UnitPrice*Quantity*(1-Discount)) as 營業額
from OrderDetails
group by ProductID
order by 營業額 desc

select ProductID, sum(UnitPrice*Quantity*(1-Discount)) as 營業額,count(*) as 被買次數
from OrderDetails
group by ProductID
order by 營業額 desc


select OrderID,  ROUND(sum(UnitPrice*Quantity*(1-Discount)),0) as 訂單總金額
from OrderDetails
group by OrderID

--撈出庫存量低於安全存量,且尚未訂貨的商品
select *
from Products
where UnitsInStock<=ReorderLevel and Discontinued=0 and UnitsOnOrder=0


