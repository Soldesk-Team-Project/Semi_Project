create table account1(
	a_id varchar2(30 char) primary key,
	a_pw varchar2(30 char) not null,
	a_name varchar2(20 char) not null,
	a_birth varchar2(30 char) not null,
	a_addr varchar2(100 char)  not null,
	a_phone varchar2(30 char) not null,
	a_spend varchar2(100 char) not null,
	a_pay varchar2(100 char) not null,
	a_qestion varchar2(100 char) not null,
	a_answer varchar2(100 char) not null
);

insert into account1 values ('js', '1004', 'USER', to_date('1997-10-21', 'YYYY-MM-DD'), '措备矫', '010-XXXX-XXXX', '0 0 0 0 ', '0', '混带 林家?', '措备');

select * from account1;

delete account1 where a_id='';
drop table account1 cascade constraint purge;