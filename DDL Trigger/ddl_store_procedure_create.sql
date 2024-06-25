use trigger_db;

create trigger ddl_sp_create
on database
for create_procedure
as 
begin
	rollback
	print 'You are not allowed to create a store procedure';
end;

create proc sp_myProcedure
as 
begin
	print 'This is my store procedure';
end;