--CAST() function convert a vlaue into a specified datatype.
select CAST(23.45 as int) as [Interger Value]; --float to integer

select CAST('2021-05-03'as datetime) as [Date Time]; --string to datetime;
create table employees(
id int identity primary key,
[name] varchar(50) null,
joining_date  datetime
);
insert into employees values
('Ravi','2022-06-25'),
('Sonam','2023-03-21')
select [name] + ' _ '+ cast(id as varchar(50)) from employees;

select * from employees;
insert into employees values
('Pooja'+ ' _ '+ CAST(2 as varchar),GETDATE())

--select datetime
select * from employees where cast(joining_date as date)='2024-06-27';

select id,[name],CAST(joining_date as date) from employees
where cast(joining_date as date)='2024-06-27';


--count how many employees hire by year
select CAST(joining_date as date),COUNT(id) from employees
group by CAST(joining_date as date);