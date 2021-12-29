create table con (
	c_no number(20) primary key,
	c_restaurant number(20) not null,
	c_menu number(20) not null
);
create sequence con_seq start with 1 increment by 1;

insert into CON values(con_seq.nextval, 1, 4);
insert into CON values(con_seq.nextval, 1, 7);
insert into CON values(con_seq.nextval, 1, 9);
insert into CON values(con_seq.nextval, 1, 13);
insert into CON values(con_seq.nextval, 1, 17);
insert into CON values(con_seq.nextval, 1, 18);
insert into CON values(con_seq.nextval, 1, 19);
insert into CON values(con_seq.nextval, 1, 20);
insert into CON values(con_seq.nextval, 1, 32);
insert into CON values(con_seq.nextval, 1, 39);
insert into CON values(con_seq.nextval, 1, 42);
insert into CON values(con_seq.nextval, 1, 44);
insert into CON values(con_seq.nextval, 1, 48);
insert into CON values(con_seq.nextval, 1, 57);
insert into CON values(con_seq.nextval, 1, 58);
insert into CON values(con_seq.nextval, 1, 62);
-- ÇÑ¼Ü

insert into con values(con_seq.nextval, 2, 1);
insert into con values(con_seq.nextval, 2, 2);
insert into con values(con_seq.nextval, 2, 3);
insert into con values(con_seq.nextval, 2, 4);
insert into con values(con_seq.nextval, 2, 5);
insert into con values(con_seq.nextval, 2, 6);
insert into con values(con_seq.nextval, 2, 7);
insert into con values(con_seq.nextval, 2, 8);
insert into con values(con_seq.nextval, 2, 9);
insert into con values(con_seq.nextval, 2, 10);
insert into con values(con_seq.nextval, 2, 11);
insert into con values(con_seq.nextval, 2, 14);
insert into con values(con_seq.nextval, 2, 15);
insert into con values(con_seq.nextval, 2, 17);
insert into con values(con_seq.nextval, 2, 19);
insert into con values(con_seq.nextval, 2, 20);
insert into con values(con_seq.nextval, 2, 21);
insert into con values(con_seq.nextval, 2, 22);
insert into con values(con_seq.nextval, 2, 23);
insert into con values(con_seq.nextval, 2, 25);
-- ¼ö¿î

insert into con values(con_seq.nextval, 3, 12);
insert into con values(con_seq.nextval, 3, 13);
insert into con values(con_seq.nextval, 3, 22);
insert into con values(con_seq.nextval, 3, 12);
-- ¾ö¹é¿ë µÅÁö±¹¹ä


select m_name, r_name from con, MENU1, RESTAURANT1
where m_no = 2;



















drop sequence con_seq;
drop table con cascade constraint purge;