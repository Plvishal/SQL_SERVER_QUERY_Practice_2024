select * from student_tbl;

begin try
begin transaction
delete from student_tbl where class='1'
commit transaction
print 'transaction successfuly done'
end try
begin catch
rollback transaction
	print 'Transaction Failed !!!'
	select ERROR_MESSAGE() as [Error message]
end catch;

