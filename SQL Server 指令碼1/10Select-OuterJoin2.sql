--�ЧQ��Northwind��Ʈw�i��d��
--1.�C�X�q���U�L�q�檺�Ȥ���
select customers.*
from orders right join  customers
on orders.CustomerID=Customers.CustomerID
where orders.CustomerID is null

--2.�C�X�q���B�z�L�q�檺���u���
select Employees.*
from orders right join  Employees
on orders.EmployeeID=Employees.EmployeeID
where orders.EmployeeID is null


--3.�C�X�q���Q�ʶR���ӫ~���
select *
from OrderDetails right join  Products
on OrderDetails.ProductID=Products.ProductID
where OrderDetails.ProductID is null


--��null�Ȫ��B�z�覡
--�έp�C��Region���X�ӫȤ�
select isnull(Region,'N/A') as Region,count(*) as �Ȥ��
from Customers
group by Region