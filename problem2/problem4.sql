select * from employees_table;
/*
Find the employees whose salary is greater than 
the average and location is Mumbai
*/
alter table employees_table add [location] varchar(50);
update  employees_table  set salary=30000
where id=1;

select * from employees_table
where salary > (select AVG(salary) from employees_table) and [location]='Mumbai'