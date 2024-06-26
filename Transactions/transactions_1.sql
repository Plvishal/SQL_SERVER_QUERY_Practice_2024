create database transaction_db;
use transaction_db;
create table student_tbl(
id int primary key,
[name] varchar(50) null,
age int null,
class int null
);

insert into student_tbl  values
(1,'Vishal',23,8),
(2,'Ravi',24,7),
(3,'Shivendra',22,2),
(4,'Mangla',25,3),
(5,'Parul',20,5),
(6,'Sweta',21,1);

select * from student_tbl;
update student_tbl set [name]='Sonam' where id=6;

--start transaction--
begin transaction
update student_tbl set [name]='Poonam' where id=5;
commit transaction; --It is use for permanent  save data in table
rollback transaction; --Undo
/*
Remember you cannot use commit & rollback togather
If we start transaction-
				-commit permanent store data in db
				-rollback use if transaction fail or we want undo table
*/
