select *
from OrderDetails

select *,UnitPrice*Quantity*(1-Discount) as �p�p
from OrderDetails


select OrderID,count(*)
from OrderDetails
group by OrderID


--�έp�C�@�ذӫ~�Q�R�L�X��
select ProductID,count(*) as �Q�R����
from OrderDetails
group by ProductID


--���Ӱӫ~�Q�ʶR���ƻ���Ƨ�
select  ProductID,count(*) as �Q�R����
from OrderDetails
group by ProductID
order by �Q�R���� desc

--��X�e10�W�����ӫ~
select top 10 with ties ProductID,count(*) as �Q�R����
from OrderDetails
group by ProductID
order by �Q�R���� desc

--�έp�C�@�ذӫ~����~�B,�åB����Ƨ�
select ProductID, sum(UnitPrice*Quantity*(1-Discount)) as ��~�B
from OrderDetails
group by ProductID
order by ��~�B desc

select ProductID, sum(UnitPrice*Quantity*(1-Discount)) as ��~�B,count(*) as �Q�R����
from OrderDetails
group by ProductID
order by ��~�B desc


select OrderID,  ROUND(sum(UnitPrice*Quantity*(1-Discount)),0) as �q���`���B
from OrderDetails
group by OrderID

--���X�w�s�q�C��w���s�q,�B�|���q�f���ӫ~
select *
from Products
where UnitsInStock<=ReorderLevel and Discontinued=0 and UnitsOnOrder=0


