create table tbl_employees(
emp_id int identity primary key,
emp_name varchar(100) not null,
emp_salary int null,
hire_date date null,
department varchar(100) not null,

);
drop table tbl_employees;
insert  into tbl_employees values
('Ravi',100000,'2022','IT'),
('Shivendra kumar',10000,'2023','IT'),
('Kajal Pathak',50000,'2022','CSE'),
('Chatana Mishra',13000,'2024','CSE')

select * from tbl_employees;

-- Q.1 Retrieve all record from the employees table--
select * from tbl_employees;
--Q.2 Find the number of employees in each department--
select department, COUNT(*) as num_employees
from tbl_employees
group by department;

-- Find the employees in the IT department earning more than 500000--
select * from tbl_employees
where department='IT' and emp_salary>50000;
