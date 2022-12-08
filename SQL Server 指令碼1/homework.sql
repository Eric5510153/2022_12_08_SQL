---1.	在【員工】資料表中找出所有來自倫敦的員工資料。
select*
from  Employees 
where City='London'
---2.	在【員工】資料表中找出所有在1993年(含)以後到職的資料。
select*
from  Employees 
where HireDate>='1993-1/1'
---3.	在【訂單】資料表找出送貨的城市為Reims與Lander及Madrid的資料。
select*
from Orders
where ShipCity in('Reims','Lander','Madrid')
---4.	在【產品】資料表中找出庫存量最多的前6名資料記錄。
select  top 6 with ties *
from Products
ORDER BY UnitsInStock desc
---5.	找出訂單號碼10847共訂購哪些產品（列出產品ID即可）。
select*
from OrderDetails
where OrderID='10847'
---6.	在【訂單】資料表中找出尚未有送貨日期的記錄資料。
select*
from Orders
where ShippedDate is null
---7.	在【客戶】資料表中找出居住城市為「Montreal」、「Lisboa」、「Lyon」、「Stavern」、「Geneve」、「Bruxelles」、「Madrid」的客戶資料記錄。
select*
from Customers
where City in ('Montreal','Lisboa','Lyon','Stavern','Geneve','Bruxelles','Madrid')
---8.	找出訂購產品數量介於20~40件的資料記錄。
select*
from OrderDetails
where Quantity between 20 and 40

-------------------(二)複雜查詢
---1.	計算【產品】資料表中類別號為2的產品資料平均單價。
select avg(UnitPrice) as 平均單價
from Products
where CategoryID ='2'
---2.	在【產品】資料表中找出庫存量小於安全存量，且尚未進行採購的產品資料記錄。
select *
from Products
where UnitsInStock<=ReorderLevel and Discontinued=0 and UnitsOnOrder=0
---3.	在【訂單明細】資料表找出訂單中包含超過5種產品的資料記錄
select OrderID,count(*) as 產品種類數量
from OrderDetails
group by OrderID
having count(*)>=5
---4.	在【訂單明細】資料表中顯示出訂單號碼10263所有產品的價格小計。
select sum(UnitPrice) as 小計
from OrderDetails
where OrderID='10263'
---5.	利用【產品】資料表資料，統計出每一個供應商各提供了幾樣產品。
select SupplierID,count(*) as 供應商產品種類數量
from Products
group by SupplierID
---6.	利用【訂單】資料表資料，統計出每一位客戶被每一位員工所服務次數。
select CustomerID
from Orders
---7.	利用【訂單明細】資料表資料，統計出各項商品的平均單價與平均銷售數量，並列出平均銷售數量大於10的資料，且將資料依產品編號由小到大排序。
