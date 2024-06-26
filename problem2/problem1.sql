select * from employees_table;
--Find and remove duplicate data using CTE--
with duplicate_cte
as(
select *,ROW_NUMBER() over 
(partition by salary order by department) 
as row_num
from employees_table
)
delete from duplicate_cte
where row_num>1;
select * from duplicate_cte;
