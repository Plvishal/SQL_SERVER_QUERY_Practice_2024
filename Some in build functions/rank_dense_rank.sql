
create table student_result(
[name] varchar(50) not null,
gender varchar(50) not null,
age int not null,
marks int not null
);

insert into student_result values
('Raju','male',27,65),
('Poonam','female',20,90),
('Ravi Singh','male',24,98),
('Shivendra','male',24,94),
('Mangla','male',25,80),
('Sweta','female',23,95),
('Krit','male',23,91);

select * from student_result;
--Find rank of students by highest marks
--Rank with order  by
select [name] ,gender,age,marks ,
RANK() over (order by marks desc) as [Rank]
from student_result;


--Rank with partition by
select [name] ,gender,age,marks ,
RANK() over ( partition by gender order by marks desc) as [Rank]
from student_result;

--Dense_Rank with order by
select [name],gender,age,marks,
DENSE_RANK() over (order by marks desc) as [Rank]
from student_result;

--Dense_Rank with partition by
select [name],gender,age,marks,
DENSE_RANK() over ( partition by gender order by marks desc) as [Rank]
from student_result;

--We can use Rank and Dense Rank togather
select [name],gender,age,marks,
RANK() over ( partition by gender order by marks desc) as [Rank],
DENSE_RANK() over ( partition by gender order by marks desc) as [ Dense Rank]
from student_result;