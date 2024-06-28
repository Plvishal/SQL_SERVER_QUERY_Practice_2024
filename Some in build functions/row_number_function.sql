select * from over_tbl;
--Row_Number function always use with over clause
--Row_Number with order by
select *,ROW_NUMBER() over (order by [name] desc ) as [row number]
from over_tbl;

--Row_Number with partition by 
select * ,ROW_NUMBER() over (partition by gender order by [name] desc) as [Row Number]
from over_tbl;



