create table over_tbl (
id int identity primary key,
[name] varchar(50) not null,
gender varchar(20) not null,
age int not null,
salary int not null
);

insert into over_tbl values 
('Vishal Pal','male',23,23450),
('Parul Saxena','female',21,22557),
('Mangla Pal','male',24,32605),
('Ravi Prakash','male',25,20215),
('Shivendra Kumar','male',22,29751),
('Sweta Pandey','female',23,21456),
('Priyanka Pal','female',20,2442),
('Shailesh','male',26,23512);
select * from over_tbl;
--normal way see all gender wise total count 
select gender,COUNT(*) as [Total Gender],
max(salary) as [Max Salary],
MIN(salary) as [Min Salary],
AVG(salary) as [Average Salary]
from over_tbl
group by gender;

--Convert this into  sub query with  inner join
select [name],salary,over_tbl.gender ,genders.[Total Gender] from over_tbl
inner join
(select gender,COUNT(*) as [Total Gender] from over_tbl
group by gender)as genders
on over_tbl.gender=genders.gender;

--Use Over with partition 
select [name],gender,salary,
COUNT(gender) over(partition by gender) as [Total Gender],
MAX(salary) over(partition by gender) as [Max Salary],
MIN(salary) over(partition by gender) as [Min Salary],
AVG(salary) over(partition by gender) as [AVG Salary]
from over_tbl;



