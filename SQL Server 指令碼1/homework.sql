---1.	�b�i���u�j��ƪ���X�Ҧ��Ӧۭ۴������u��ơC
select*
from  Employees 
where City='London'
---2.	�b�i���u�j��ƪ���X�Ҧ��b1993�~(�t)�H���¾����ơC
select*
from  Employees 
where HireDate>='1993-1/1'
---3.	�b�i�q��j��ƪ��X�e�f��������Reims�PLander��Madrid����ơC
select*
from Orders
where ShipCity in('Reims','Lander','Madrid')
---4.	�b�i���~�j��ƪ���X�w�s�q�̦h���e6�W��ưO���C
select  top 6 with ties *
from Products
ORDER BY UnitsInStock desc
---5.	��X�q�渹�X10847�@�q�ʭ��ǲ��~�]�C�X���~ID�Y�i�^�C
select*
from OrderDetails
where OrderID='10847'
---6.	�b�i�q��j��ƪ���X�|�����e�f������O����ơC
select*
from Orders
where ShippedDate is null
---7.	�b�i�Ȥ�j��ƪ���X�~�������uMontreal�v�B�uLisboa�v�B�uLyon�v�B�uStavern�v�B�uGeneve�v�B�uBruxelles�v�B�uMadrid�v���Ȥ��ưO���C
select*
from Customers
where City in ('Montreal','Lisboa','Lyon','Stavern','Geneve','Bruxelles','Madrid')
---8.	��X�q�ʲ��~�ƶq����20~40�󪺸�ưO���C
select*
from OrderDetails
where Quantity between 20 and 40

-------------------(�G)�����d��
---1.	�p��i���~�j��ƪ����O����2�����~��ƥ�������C
select avg(UnitPrice) as �������
from Products
where CategoryID ='2'
---2.	�b�i���~�j��ƪ���X�w�s�q�p��w���s�q�A�B�|���i����ʪ����~��ưO���C
select *
from Products
where UnitsInStock<=ReorderLevel and Discontinued=0 and UnitsOnOrder=0
---3.	�b�i�q����ӡj��ƪ��X�q�椤�]�t�W�L5�ز��~����ưO��
select OrderID,count(*) as ���~�����ƶq
from OrderDetails
group by OrderID
having count(*)>=5
---4.	�b�i�q����ӡj��ƪ���ܥX�q�渹�X10263�Ҧ����~������p�p�C
select sum(UnitPrice) as �p�p
from OrderDetails
where OrderID='10263'
---5.	�Q�Ρi���~�j��ƪ��ơA�έp�X�C�@�Ө����ӦU���ѤF�X�˲��~�C
select SupplierID,count(*) as �����Ӳ��~�����ƶq
from Products
group by SupplierID
---6.	�Q�Ρi�q��j��ƪ��ơA�έp�X�C�@��Ȥ�Q�C�@����u�ҪA�Ȧ��ơC
select CustomerID
from Orders
---7.	�Q�Ρi�q����ӡj��ƪ��ơA�έp�X�U���ӫ~����������P�����P��ƶq�A�æC�X�����P��ƶq�j��10����ơA�B�N��ƨ̲��~�s���Ѥp��j�ƧǡC
