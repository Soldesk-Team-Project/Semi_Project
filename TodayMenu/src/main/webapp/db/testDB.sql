create table Test (
	num1 number(30,25) not null,
	num2 number(30,25) not null
) 

insert into test values (37.56984597865609, 126.98570002864828);

select * from test;

drop table test cascade constraint purge;