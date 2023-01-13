--(�@)
--1
select *
from Employees
where city='London'

--2
select *
from Employees
where HireDate>='1993-1-1'

--3
select *
from orders
where ShipCity in('Reims','Lander','Madrid')

--4
select top 6 with ties *
from Products
order by UnitsInStock desc

--5
select ProductID
from OrderDetails
where OrderID='10847'

--6
select *
from Orders
where ShippedDate is null

--7
select *
from Customers
where city in 
('Montreal','Lisboa','Lyon','Stavern','Geneve','Bruxelles','Madrid')

--8
select *
from OrderDetails
where Quantity between 20 and 40

----(�G)
--1
select avg(UnitPrice)
from Products
where CategoryID=2

--2
select *
from Products
where UnitsInStock<ReorderLevel
and UnitsOnOrder=0

--3
select OrderID,count(*)
from OrderDetails
group by OrderID
having count(*)>=5

--4
select *, UnitPrice*Quantity*(1-Discount) as �p�p
from OrderDetails
where OrderID='10263'


--5
select SupplierID,count(*)
from Products
group by SupplierID


--6
select CustomerID,EmployeeID,count(*)
from Orders
group by CustomerID,EmployeeID


--7
select productID, avg(UnitPrice) as �������,avg(Quantity) as �����P��ƶq
from OrderDetails
group by productID
having avg(Quantity)>10
order by ProductID

