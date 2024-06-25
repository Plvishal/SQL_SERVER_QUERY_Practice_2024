use trigger_db;

create table tbl_composite_key
(
emp_id int not null,
dep_id int not null,
emp_name varchar(50),
emp_gen varchar(50),
emp_salary int,
dep_name varchar(50),
primary key (emp_id,dep_id)
);

insert into tbl_composite_key values
(1,1,'Vishal','male',2000,'IT'),
(2,2,'Ravi','male',23300,'IT'),
(3,1,'Shivendra','male',152000,'IT');

select * from tbl_composite_key;
drop table tbl_composite_key;

--if table already exits then how we can create composite keys--
create table tbl_composite_key
(
emp_id int not null,
dep_id int not null,
emp_name varchar(50),
emp_gen varchar(50),
emp_salary int,
dep_name varchar(50),
--primary key (emp_id,dep_id)
);

select * from tbl_composite_key;

alter table tbl_composite_key add primary key(emp_id,dep_id);