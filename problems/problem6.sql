--Q.6 Find the department with the highest number of employees--
select  top 1 department, count(*) as [highest number]
from tbl_employees
group by department
order by department desc;