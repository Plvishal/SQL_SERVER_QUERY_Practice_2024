-- Q.8 Find the second the highest salary--
select MAX(emp_salary) as[Highest Salary]
from tbl_employees
where emp_salary < (select MAX(emp_salary) from tbl_employees);