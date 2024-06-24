create table personel_employees_info (
emp_id int identity primary key,
emp_firtname varchar(50) not null,
emp__lastaname varchar(50) null,
[address] varchar(100) null
);
insert into personel_employees_info values
('Vishal','Pal','Mumbai'),
('Ravi','Prakash','Lucknow'),
('Manohar','Gargkari','Hyderabad')

create table employees_salary(
emp_id int identity primary key,
designation varchar(100) null,
salary varchar(100) null
);
insert into employees_salary values
('SQL Developer','45000'),
('PHP Developer','33300'),
('MERN Stack Developer','500000')

create view vw_employees_instead
as
select A.emp_id,A.emp_firtname,A.emp__lastaname,
B.designation,B.salary
from personel_employees_info as A
inner join employees_salary as B
on A.emp_id=B.emp_id;

-- See view--
select * from vw_employees_instead;

--try to delete last row--
delete from vw_employees_instead where emp_id=3;

/*
then show this error.
View or function 'vw_employees_instead' is not updatable because the modification affects multiple base tables.
 because we created view with help of multiple table
*/

--But we want delete then use instead of trigger --
create trigger tr_instead_employees
on vw_employees_instead
instead	 of delete
as
begin 
	delete from personel_employees_info where emp_id in
	(select emp_id from deleted)
	delete from employees_salary where emp_id in
	(select emp_id from deleted)
end;

--try to delete last row--
delete from vw_employees_instead where emp_id=3;

--now you can see every table , data delete data from all three tables where id=3--
select * from vw_employees_instead;
select * from personel_employees_info;
select * from employees_salary;