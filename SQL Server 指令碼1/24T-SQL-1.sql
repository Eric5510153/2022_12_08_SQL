print 'hello world'

select 'hello world'


declare @myName nvarchar(50)='Jack'
print @myName
select @myName

declare @number int
set @number=100

select @myName='Jack Lee'
print @number
print @myName


declare @salary money =50000
print '�z���~���O:'+ cast(@salary as varchar)

declare @birthday datetime ='2022/12/19'
print '�z���ͤ鬰:'+convert(varchar , @birthday ,120)


select @birthday=�ͤ�
from �ǥ�
where �Ǹ�='S002'
print '�z���ͤ鬰:'+convert(varchar , @birthday ,120)


declare @phoneNumber varchar(20) ='0965423156'
print '�z���q�ܬ�:'+cast(@phoneNumber as varchar) 

select @phoneNumber=�q��
from �ǥ�
where �Ǹ�='S001'
print '�ǥͪ��q�ܬ�:'+cast(@phoneNumber as varchar) 

--��ƪ��ܼ�
declare @StuBirthday table(
	name nvarchar(30),
	birthday datetime
)

insert into @StuBirthday
values('���ڦ�','2022-12-19')


insert into @StuBirthday
select �m�W,�ͤ�
from �ǥ�

select * from @StuBirthday