select * from student_tbl;
begin try
update student_tbl set age='dfg' where id=5
end try
begin catch
	select ERROR_NUMBER() as [Error number],
	 ERROR_SEVERITY() as[Error Saverity],
	 ERROR_STATE() as [Error State],
	 ERROR_PROCEDURE() as[SP Name],
	 ERROR_LINE() as [Error Line],
	 ERROR_MESSAGE() as [Error Message]
end catch;
