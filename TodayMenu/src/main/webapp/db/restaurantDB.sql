create table restaurant1 (
	r_no number(20) primary key,
	r_name varchar2(100 char)not null,
	r_place varchar2(100 char)not null,
	r_img varchar2(200 char)not null,
	r_menu number(20) not null
);

create sequence restaurant1_seq start with 1 increment by 1;

insert into restaurant1 values(restaurant1_seq.nextval, '맘스터치', '서울 종로구 종로 62-1 2층', 'img/restaurant/맘스터치.jfif', 48); -- 햄버거
insert into RESTAURANT1 values(restaurant1_seq.nextval, '맘스터치', '서울 종로구 종로 62-1 2층', 'img/restaurant/맘스터치.jfif', 58); -- 치킨
insert into RESTAURANT1 values(restaurant1_seq.nextval, '써브웨이', '서울 종로구 종로 77 통일빌딩', 'img/restaurant/써브웨이.jfif', 76);  -- 샌드위치
insert into RESTAURANT1 values(restaurant1_seq.nextval, 'KFC', '서울 종로구 종로 88', 'img/restaurant/KFC.jfif', 48); -- 햄버거
insert into RESTAURANT1 values(restaurant1_seq.nextval, 'KFC', '서울 종로구 종로 88', 'img/restaurant/KFC.jfif', 58); -- 치킨
insert into RESTAURANT1 values(restaurant1_seq.nextval, '교촌치킨', '서울 종로구 종로12길 15 코아빌딩 1층', 'img/restaurant/교촌치킨.jfif', 48);  -- 햄버거
insert into RESTAURANT1 values(restaurant1_seq.nextval, '교촌치킨', '서울 종로구 종로12길 15 코아빌딩 1층', 'img/restaurant/교촌치킨.jfif', 58);  -- 치킨
insert into RESTAURANT1 values(restaurant1_seq.nextval, '교촌치킨', '서울 종로구 종로12길 15 코아빌딩 1층', 'img/restaurant/교촌치킨.jfif', 38);  -- 돈까스
insert into RESTAURANT1 values(restaurant1_seq.nextval, '한솥', '서울 종로구 종로12길 10', 'img/restaurant/한솥.jfif', 1);  -- 순두부찌개
insert into RESTAURANT1 values(restaurant1_seq.nextval, '한솥', '서울 종로구 종로12길 10', 'img/restaurant/한솥.jfif', 4);  --고추장불고기 백반
insert into RESTAURANT1 values(restaurant1_seq.nextval, '한솥', '서울 종로구 종로12길 10', 'img/restaurant/한솥.jfif', 7);  -- 김치볶음밥
insert into RESTAURANT1 values(restaurant1_seq.nextval, '한솥', '서울 종로구 종로12길 10', 'img/restaurant/한솥.jfif', 9);  -- 낙지볶음
insert into RESTAURANT1 values(restaurant1_seq.nextval, '한솥', '서울 종로구 종로12길 10', 'img/restaurant/한솥.jfif', 17);  -- 비빔밥
insert into RESTAURANT1 values(restaurant1_seq.nextval, '한솥', '서울 종로구 종로12길 10', 'img/restaurant/한솥.jfif', 18);  -- 볶음밥
insert into RESTAURANT1 values(restaurant1_seq.nextval, '한솥', '서울 종로구 종로12길 10', 'img/restaurant/한솥.jfif', 34);  -- 라멘
insert into RESTAURANT1 values(restaurant1_seq.nextval, '한솥', '서울 종로구 종로12길 10', 'img/restaurant/한솥.jfif', 38);  -- 일식돈가스
insert into RESTAURANT1 values(restaurant1_seq.nextval, '한솥', '서울 종로구 종로12길 10', 'img/restaurant/한솥.jfif', 43);  -- 샐러드
-- 패스트푸드점

select * from restaurant1;

drop sequence restaurant1_seq;
drop table restaurant1 cascade constraint purge;