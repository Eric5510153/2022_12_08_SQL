---�T�BSQL DDL�y�k�m��
---1.	�мg�X�إߤ@�ӦW���iHW2DDL�j��Ʈw��SQL DDL Script�C
---DDL Script�G
create database HW2DDL
go

--2.	�Ш̤U�C��Ӹ�ƪ�W���A�g�X�۹�����SQL DDL Script�A�Ϩ�i��iHW2DDL�j��Ʈw���إ߸Ӹ�ƪ�C
---�i�ǥ͸�ƪ�j
---DDL Script�G
create table �ǥ͸�ƪ�(
	�Ǹ� char(10) not null primary key,
	�m�W nvarchar(20) not null,
	�q�� varchar(20) not null,
	��} nvarchar(100) not null,
	�ͤ� datetime)
go

---�i�ҵ{��ƪ�j
create table �ҵ{��ƪ�(
	�ҵ{�N�X char(6) not null primary key,
	�ҵ{�W�� nvarchar(30) not null,
	�Ǥ��� int not null default 3
)
go
---3.	�аѦҤU�CER�ϻP�T�Ӹ�ƪ�W���A�g�X�۹�����SQL DDL�A�Ϩ�i��iHW2DDL�j��Ʈw���إߦ��T�Ӹ�ƪ�A�ëإߤT�Ӹ�ƪ��������p�C
---�i�q���ƪ�j
---�i�q����ӡj
---�i���~��ƪ�j
create table �q���ƪ�(
	�q��N�� char(10) not null primary key,
	�q�ʤ�� datetime not null
)
go

create table ���~��ƪ�(
	���~�s�� char(6) not null primary key,
	���~�W�� nvarchar(50) not null
)
go

create table �q�����(
	�q��N�� char(10) not null,
	���~�s�� char(6) not null,
	�ʶR�ƶq int not null
	primary key(�q��N��,���~�s��),
	foreign key(�q��N��) references �q���ƪ�(�q��N��) on delete no action on update no action,
	foreign key(���~�s��) references ���~��ƪ�(���~�s��) on delete no action on update no action
)
go

