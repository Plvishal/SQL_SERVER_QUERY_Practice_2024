-- Q.3 Find the average salary of employees in each department--
select department, AVG(emp_salary) as avg_salary
from tbl_employees
group by department;