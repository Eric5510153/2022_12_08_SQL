--請利用Northwind資料庫進行查詢
--1.列出從未下過訂單的客戶資料
select customers.*
from orders right join  customers
on orders.CustomerID=Customers.CustomerID
where orders.CustomerID is null

--2.列出從未處理過訂單的員工資料
select Employees.*
from orders right join  Employees
on orders.EmployeeID=Employees.EmployeeID
where orders.EmployeeID is null


--3.列出從未被購買的商品資料
select *
from OrderDetails right join  Products
on OrderDetails.ProductID=Products.ProductID
where OrderDetails.ProductID is null


--對null值的處理方式
--統計每個Region有幾個客戶
select isnull(Region,'N/A') as Region,count(*) as 客戶數
from Customers
group by Region