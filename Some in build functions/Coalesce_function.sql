create database function_db;
select coalesce(null,null,'Vishal',null,'Pal')
as first_non_value;

create table fullname_tbl(
id int identity primary key,
firstname varchar(50) default null,
middle_name varchar(50) default null,
last_name varchar(50) default null
);

insert into fullname_tbl values
(default,default,'Saxena'),
('Sonam',default,default),
(default,'Kumar','Singh'),
('Ravi',default,'Pal')

select * from fullname_tbl;
select id,coalesce(firstname,middle_name,last_name) from fullname_tbl;