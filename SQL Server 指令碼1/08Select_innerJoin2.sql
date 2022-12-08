select od.OrderID as 訂單編號, c.CategoryName as 產品類別,
od.ProductID as 產品代碼, p.ProductName as 產品名稱, p.QuantityPerUnit as 規格單位,
od.UnitPrice as 售價,p.UnitPrice as 訂價,od.Quantity as 數量,od.Discount as 折扣,
od.UnitPrice*od.Quantity*(1-od.Discount) as 小計,
s.CompanyName as 供應商, s.ContactName as 供應商窗口, s.ContactTitle as 窗口稱謂
from OrderDetails as od inner join Products as p on od.ProductID=p.ProductID
inner join Categories as c on p.CategoryID=c.CategoryID
inner join Suppliers as s on p.SupplierID=s.SupplierID



select *
from Products

select *
from Employees

select od.OrderID,c.CompanyName as 客戶, c.ContactName as 客戶窗口,c.ContactTitle as 窗口稱謂,
o.OrderDate,o.RequiredDate,o.ShippedDate,  count(*) as 包含幾種商品, e.LastName+', '+e.FirstName as 處理員工
,ROUND(sum(od.UnitPrice*od.Quantity*(1-od.Discount)),0) as 訂單總金額
from OrderDetails as od
inner join Orders as o on od.OrderID=o.OrderID
inner join Customers as c on o.CustomerID=c.CustomerID
inner join Employees as e on o.EmployeeID=e.EmployeeID
group by od.OrderID,c.CompanyName , c.ContactName ,c.ContactTitle,
o.OrderDate,o.RequiredDate,o.ShippedDate, e.LastName+', '+e.FirstName

-------------------------------------------------------------------
--統計每位客戶的業績
select *
from  Customers

select *
from  Orders

select o.CustomerID,c.CompanyName,round(sum(od.UnitPrice*od.Quantity*(1-od.Discount)),0) as 客戶業績,
count(*) as 下單次數
from  OrderDetails as od inner join Orders as o on od.OrderID=o.OrderID
inner join Customers as c on o.CustomerID=c.CustomerID
group by o.CustomerID,c.CompanyName
order by 客戶業績 desc


-------------------------------------------
SELECT          OrderDetails.OrderID, Products.ProductID, Products.ProductName, Customers.CompanyName, convert(date,Orders.OrderDate,112) as ODate, 
                            OrderDetails.UnitPrice, OrderDetails.Quantity, OrderDetails.Discount
FROM              OrderDetails INNER JOIN
                            Orders ON OrderDetails.OrderID = Orders.OrderID INNER JOIN
                            Products ON OrderDetails.ProductID = Products.ProductID INNER JOIN
                            Customers ON Orders.CustomerID = Customers.CustomerID