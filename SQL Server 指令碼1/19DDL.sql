create database dbTest
go 
use dbTest
go


create database school
go

use school
go

create table Students(
 StuId nchar (4) primary key,
 StuName nvarchar(30) not null ,
 StuGender bit not null,
 StuTel varchar (20),
 StuBisthday datetime not null,
 StuAge as datediff(year,StuBisthday,getdate())


)
go
create table Courses(
    CoursesID nchar(5) primary key,
	CourseName nvarchar(30) not null,
	CourseCredit tinyint not null
)
go

create table Employees(
   ID nchar(10) primary key,
   EmpName nvarchar(30) not null,
   City nvarchar(5) not null,
   Street nvarchar(50) not null,
   EmpTel nvarchar(20) not null,
   EmpSalary money default 28000,
   Insurance money not null,
   tax as EmpSalary*0.05

)
go

create table Professors(
  ProfessorID nchar(4) primary key,
  JobTitle nvarchar(10) not null,
  Department nvarchar(10) not null,
	ID nchar(10) not null

)
go