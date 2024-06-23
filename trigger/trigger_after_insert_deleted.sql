git branch -M mainuse practiceStore;
select * from student;
spStudentID		;
sp_hepltext spStudentID;
 select * from productViewt

 create table tbl_trigger(
 id int identity primary key,
 [name] varchar(100) not null,
 gender varchar(20) not null,
 fees int default 200
 );
 insert into tbl_trigger values
 ('Shailesh Chaudhary','male',4407)


 select * from tbl_trigger; 
 delete from tbl_trigger where id=8;

 
 alter trigger tr_student
 on tbl_trigger
 after insert
 as
 begin
	select * from inserted
 end;

 create trigger tr_student_delete
 on tbl_trigger
 after delete
 as
 begin
	select * from deleted
end;

create trigger tr_student_update
on tbl_trigger
after update
as
begin
	
end;