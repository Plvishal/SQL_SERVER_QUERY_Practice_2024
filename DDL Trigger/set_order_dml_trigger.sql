create table student_tbl(
std_id int identity primary key,
std_name varchar(50) not null,
age int null
);

insert into student_tbl values
('Vishal Pal',23),
('Mangla Pal',26),
('Ravi Prakash',25),
('Shivendra kumar',24),
('Parul Saxena',20)

create trigger tr_student_3
on student_tbl
after insert
as 
begin
	print '3rd trigger is fired';
end;

create trigger tr_student_2
on student_tbl
after insert
as 
begin
	print '2nd trigger is fired';
end;

create trigger tr_student_1
on student_tbl
after insert
as 
begin
	print '1st trigger is fired';
end;


--set the order--
execute sp_settriggerorder
@triggername='tr_student_1',
@order='first',
@stmttype='insert';

execute sp_settriggerorder
@triggername='tr_student_3',
@order='last',
@stmttype='insert';