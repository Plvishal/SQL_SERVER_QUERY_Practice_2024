-- Q.4 find employees with salary greater then the average salary--
select *  
from tbl_employees
where emp_salary>(select AVG(emp_salary) from tbl_employees);