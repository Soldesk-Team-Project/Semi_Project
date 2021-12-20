create table restaurant1 (
	r_no number(20) primary key,
	r_name varchar2(100 char)not null,
	r_place varchar2(100 char)not null,
	r_img varchar2(200 char)not null
);

create sequence restaurant1_seq start with 1 increment by 1;

insert into RESTAURANT1 values(restaurantDB_seq.nextval, '가게이름', '가게주소', 'img.jpg');

select * from restaurant1;

drop sequence restaurant1_seq;
drop table restaurant1 cascade constraint purge;