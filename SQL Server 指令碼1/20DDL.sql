--primary key Constraints
create table Orders(
	OrderID nchar(8),
	OrderDate datetime default getdate(),
	CustomerID nchar(5) not null,
	primary key(OrderID) --資料表層級的primary key Constraints
)
go

create table Products(
	ProductID nchar(8) primary key, --欄位層級的primary key Constraints
	ProductName nvarchar(40) not null,
	UnitPrice money not null
)
go

create table OrderDetails(
	OrderID nchar(8),
	ProductID nchar(8),
	UnitPrice money not null,
	Quantity int not null,
	UnitToal as UnitPrice*Quantity,
	primary key(OrderID,ProductID)   --設置雙主鍵

)
go

create table Customers(
   CustomersID nchar(5) primary key,
   CustomersName nvarchar(30) not null,
   Account nvarchar(20) not null unique,
   Password nvarchar(20) not null

)
go

create table ProductType(
      ProductTypeID nchar(2) primary Key,
	  ProductTypeName nvarchar(50) not null,
	  ProductTypeValue int not null constraint CK_ProductTypeValueNoLessThenZero check(ProductTypeValue>=0)


)
go
------Foreign key constraint
create table classes(
	StuId nchar(4),
	CoursesID nchar(5),
	ProfessorID nchar(4),
	ClassTime datetime not null,
	Classroom nchar(5) not null
   primary key(StuId,CoursesID,ProfessorID),
   foreign key(StuId) references Students(StuId) on delete no action on update no action,
   foreign key(CoursesID) references Courses(CoursesID) on delete cascade on update no action,
   foreign key(ProfessorID) references Professors(ProfessorID) on delete no action on update no action
) 
go
