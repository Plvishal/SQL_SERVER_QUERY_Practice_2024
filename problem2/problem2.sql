select * from employees_table;
 --find the highest/2nd highest salary--
 
 --Highest Salary
 select MAX(salary) as highest_salary from employees_table;

--2nd highest salary
select MAX(salary) as second_highest_salary
from employees_table
where salary <(select MAX(salary) from employees_table)