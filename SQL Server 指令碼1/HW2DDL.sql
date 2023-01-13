---三、SQL DDL語法練習
---1.	請寫出建立一個名為【HW2DDL】資料庫的SQL DDL Script。
---DDL Script：
create database HW2DDL
go

--2.	請依下列兩個資料表規劃，寫出相對應之SQL DDL Script，使其可於【HW2DDL】資料庫中建立該資料表。
---【學生資料表】
---DDL Script：
create table 學生資料表(
	學號 char(10) not null primary key,
	姓名 nvarchar(20) not null,
	電話 varchar(20) not null,
	住址 nvarchar(100) not null,
	生日 datetime)
go

---【課程資料表】
create table 課程資料表(
	課程代碼 char(6) not null primary key,
	課程名稱 nvarchar(30) not null,
	學分數 int not null default 3
)
go
---3.	請參考下列ER圖與三個資料表規劃，寫出相對應之SQL DDL，使其可於【HW2DDL】資料庫中建立此三個資料表，並建立三個資料表之間的關聯。
---【訂單資料表】
---【訂單明細】
---【產品資料表】
create table 訂單資料表(
	訂單代號 char(10) not null primary key,
	訂購日期 datetime not null
)
go

create table 產品資料表(
	產品編號 char(6) not null primary key,
	產品名稱 nvarchar(50) not null
)
go

create table 訂單明細(
	訂單代號 char(10) not null,
	產品編號 char(6) not null,
	購買數量 int not null
	primary key(訂單代號,產品編號),
	foreign key(訂單代號) references 訂單資料表(訂單代號) on delete no action on update no action,
	foreign key(產品編號) references 產品資料表(產品編號) on delete no action on update no action
)
go

