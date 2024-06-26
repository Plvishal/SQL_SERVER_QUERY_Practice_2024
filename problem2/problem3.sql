select * from employees_table;
-- Find the salary and department of highest salary using CTE.
with CTE
as(
select salary,department,
ROW_NUMBER() over (order by salary desc) as row_num
from employees_table
)
select salary,department from CTE where row_num=1
