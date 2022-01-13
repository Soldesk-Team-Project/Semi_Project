create table board (
	b_no number(20) primary key,
	b_title varchar2(50 char) not null,
	b_date date not null,
	b_id varchar2(30 char) not null,
	b_content varchar2(200 char) not null
);

create sequence board_seq increment by 1;

select * from board where b_title like '%1%' order by b_no; 

insert into board values(board_seq.nextval, '제목', sysdate, '유저ID', '내용');

select * from board;

delete from board where b_;

drop table board cascade constraint purge;
drop sequence board_seq;
