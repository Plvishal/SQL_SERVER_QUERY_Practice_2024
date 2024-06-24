create database trigger_db;
--when someone create new table on this database(trigger_db)--
--Then executed this trigger first--
create trigger tt_ddl_table_create
on database
for create_table
as
begin
	print 'New table created !!';
end;

create table test_tbl(id int);

--For alter table--
create trigger tr_ddl_trigger_alter
on database
for alter_table
as 
begin
	print 'Yoy have just alter table';
end;

alter table test_tbl add [name] varchar(50);
select * from test_tbl;


-- for the drop trigger--
create trigger tr_ddl_trigger_drop
on database
for drop_table
as 
begin
	print 'You have just drop the table';
end;
drop table test_tbl;
