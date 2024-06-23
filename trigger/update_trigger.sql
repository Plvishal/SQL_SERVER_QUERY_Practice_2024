
/*
when we are update table then row effected two way
1. New value inserted in table row
2.Older value deleted from table row
*/
create trigger tr_student_update
on tbl_trigger
after update
as
begin 
	select * from inserted
	select * from deleted	
end;

update tbl_trigger set name='Ajay Patel' where id=1;