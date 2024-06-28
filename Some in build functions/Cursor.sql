--Without cursor variable
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


--With cursor variable
declare myCursor cursor scroll for 
select id,name from employees
declare @emp_id int, @emp_name varchar(50)
open myCursor
fetch first from myCursor into @emp_id,@emp_name
print 'Employee is : ' + cast(@emp_id as varchar) + ' '+ @emp_name
fetch next from myCursor into @emp_id,@emp_name
print 'Employee is : ' + cast(@emp_id as varchar) + ' '+ @emp_name
fetch last from myCursor into @emp_id,@emp_name
print 'Employee is : ' + cast(@emp_id as varchar) +' '+  @emp_name
fetch prior from myCursor into @emp_id,@emp_name
print 'Employee is : ' + cast(@emp_id as varchar) + ' ' + @emp_name
fetch absolute 4 from myCursor into @emp_id,@emp_name
print 'Employee is : ' + cast(@emp_id as varchar) +' '+ @emp_name
fetch relative -1 from myCursor into @emp_id,@emp_name
print 'Employee is : ' + cast(@emp_id as varchar) +' '+ @emp_name
close myCursor
deallocate  myCursor;