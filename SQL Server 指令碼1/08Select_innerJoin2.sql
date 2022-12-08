select od.OrderID as �q��s��, c.CategoryName as ���~���O,
od.ProductID as ���~�N�X, p.ProductName as ���~�W��, p.QuantityPerUnit as �W����,
od.UnitPrice as ���,p.UnitPrice as �q��,od.Quantity as �ƶq,od.Discount as �馩,
od.UnitPrice*od.Quantity*(1-od.Discount) as �p�p,
s.CompanyName as ������, s.ContactName as �����ӵ��f, s.ContactTitle as ���f�ٿ�
from OrderDetails as od inner join Products as p on od.ProductID=p.ProductID
inner join Categories as c on p.CategoryID=c.CategoryID
inner join Suppliers as s on p.SupplierID=s.SupplierID



select *
from Products

select *
from Employees

select od.OrderID,c.CompanyName as �Ȥ�, c.ContactName as �Ȥᵡ�f,c.ContactTitle as ���f�ٿ�,
o.OrderDate,o.RequiredDate,o.ShippedDate,  count(*) as �]�t�X�ذӫ~, e.LastName+', '+e.FirstName as �B�z���u
,ROUND(sum(od.UnitPrice*od.Quantity*(1-od.Discount)),0) as �q���`���B
from OrderDetails as od
inner join Orders as o on od.OrderID=o.OrderID
inner join Customers as c on o.CustomerID=c.CustomerID
inner join Employees as e on o.EmployeeID=e.EmployeeID
group by od.OrderID,c.CompanyName , c.ContactName ,c.ContactTitle,
o.OrderDate,o.RequiredDate,o.ShippedDate, e.LastName+', '+e.FirstName

-------------------------------------------------------------------
--�έp�C��Ȥ᪺�~�Z
select *
from  Customers

select *
from  Orders

select o.CustomerID,c.CompanyName,round(sum(od.UnitPrice*od.Quantity*(1-od.Discount)),0) as �Ȥ�~�Z,
count(*) as �U�榸��
from  OrderDetails as od inner join Orders as o on od.OrderID=o.OrderID
inner join Customers as c on o.CustomerID=c.CustomerID
group by o.CustomerID,c.CompanyName
order by �Ȥ�~�Z desc


-------------------------------------------
SELECT          OrderDetails.OrderID, Products.ProductID, Products.ProductName, Customers.CompanyName, convert(date,Orders.OrderDate,112) as ODate, 
                            OrderDetails.UnitPrice, OrderDetails.Quantity, OrderDetails.Discount
FROM              OrderDetails INNER JOIN
                            Orders ON OrderDetails.OrderID = Orders.OrderID INNER JOIN
                            Products ON OrderDetails.ProductID = Products.ProductID INNER JOIN
                            Customers ON Orders.CustomerID = Customers.CustomerID