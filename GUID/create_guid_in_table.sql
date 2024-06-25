create table guid_unique_table( 
id uniqueidentifier primary key default newid(),
[name] varchar(50) null
);

insert into guid_unique_table values
(default,'Priyanka Pal');

select * from guid_unique_table;