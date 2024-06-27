declare myCursor cursor scroll for 
select * from employees
open myCursor
fetch first from myCursor
fetch next from myCursor
fetch last from myCursor
fetch prior from myCursor
close myCursor
deallocate  myCursor
--absolute
declare myCursor cursor scroll for 
select * from employees
open myCursor
fetch absolute 4 from myCursor
close myCursor
deallocate  myCursor