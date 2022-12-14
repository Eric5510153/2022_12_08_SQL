alter table Professors	
 add foreign key(ID) references Employees(ID) on delete no action on update no action


 alter table products
 add ProductTypeID nchar(2) not null
 
 alter table products
 add foreign key (productTypeID) references ProductType(ProductTypeID) on delete no action on update no action