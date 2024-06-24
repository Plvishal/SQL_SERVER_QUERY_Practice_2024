/*
In SQL Server trigger if we are created audit table that we want capture
all actions which is perform on table and also user information .
Its means create a report card
*/



use practiceStore;
create table instead_trigger_info(
id int identity primary key,
[name] varchar(50) not null,
city varchar(100) null,
contact varchar(12)  null
);
insert into instead_trigger_info values
('Vishal Pal','Mumbai','9568964285'),
('Mangla Pal','Hyderbad','95689642235'),
('Ravi Prakash','Lucknow','9568964286'),
('Abhikesh Mishra','Chennai','9528964285'),
('Parul Saxena','Lucknow','9568964215')
select * from instead_trigger_info;



create table trigger_report_audit(
audit_id int primary key identity,
audit_info varchar(max)
);
select  * from trigger_report_audit;
--we can only one trigger same action on single table so we already create insert trigger--
-- first drop above trigger and then create new trigger with audit report card --
drop trigger tr_instead_info;

--now create new trigger--
create trigger tr_instead_insert_audit
on instead_trigger_info
instead of insert
as
begin
	insert into trigger_report_audit values
	('Someone try to insert data in instead_trigger_info table at : '+ CAST(GETDATE() as varchar(50)));
end;

--try to insert--
insert into instead_trigger_info values
('Pankaj Pal','Noida','9568964666');

--now data not inserted in instead_trigger_info table because trigger terminate and data show in table trigger_report_audit --
select * from  trigger_report_audit;