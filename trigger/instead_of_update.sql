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
create trigger tr_instead_update
on instead_trigger_info
instead of update
as
begin
	print 'you are not allow to update data in the table';
end;
update instead_trigger_info set name='Risabh Sahu' where id=6;