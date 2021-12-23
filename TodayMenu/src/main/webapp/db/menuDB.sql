create table menu1 (
	m_no number(20) primary key,
	m_category number(20) not null,
	m_name varchar2(20 char) not null,
	m_img varchar2(100 char) not null
);

create sequence menu1_seq start with 1 increment by 1; 

insert into menu1 values(menu1_seq.nextval, 1, '순두부찌개', 'img/menu/순두부찌개.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '되비지찌개', 'img/menu/되비지찌개.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '갈비탕', 'img/menu/갈비탕.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '고추장불고기백반', 'img/menu/고추장불고기백반.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '곰탕', 'img/menu/곰탕.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '곱개장', 'img/menu/곱개장.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '김치볶음밥', 'img/menu/김치볶음밥.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '김치전', 'img/menu/김치전.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '낙지볶음', 'img/menu/낙지볶음.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '냉면', 'img/menu/냉면.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '동치미국수', 'img/menu/동치미국수.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '돼지국밥', 'img/menu/돼지국밥.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '돼지고기', 'img/menu/돼지고기.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '두부김치', 'img/menu/두부김치.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '만두전골', 'img/menu/만두전골.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '물회', 'img/menu/물회.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '비빔밥', 'img/menu/비빔밥.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '볶음밥', 'img/menu/볶음밥.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '부대찌개', 'img/menu/부대찌개.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '삼계탕', 'img/menu/삼계탕.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '소고기', 'img/menu/소고기.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '수육정식', 'img/menu/수육정식.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '온면', 'img/menu/온면.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '우육면', 'img/menu/우육면.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '장국밥', 'img/menu/장국밥.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '찜닭', 'img/menu/찜닭.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '회', 'img/menu/회.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '회덮밥', 'img/menu/회덮밥.jfif');
-- 한식 데이터

insert into menu1 values(menu1_seq.nextval, 2, '볶음밥', 'img/menu/볶음밥.jfif');
insert into menu1 values(menu1_seq.nextval, 2, '마라탕', 'img/menu/마라탕.jfif');
insert into menu1 values(menu1_seq.nextval, 2, '마파두부', 'img/menu/마파두부.jfif');
insert into menu1 values(menu1_seq.nextval, 2, '짜장면', 'img/menu/짜장면.jpg');
insert into menu1 values(menu1_seq.nextval, 2, '짬뽕', 'img/menu/짬뽕.jpg');
-- 중식 데이터

insert into menu1 values(menu1_seq.nextval, 3, '라멘', 'img/menu/라멘.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '사케동', 'img/menu/사케동.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '에비텐동', 'img/menu/에비텐동.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '우나기동', 'img/menu/우나기동.jpg');
insert into menu1 values(menu1_seq.nextval, 3, '일식돈가스', 'img/menu/일식돈가스.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '차슈동', 'img/menu/차슈동.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '초밥', 'img/menu/초밥.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '카츠동', 'img/menu/카츠동.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '메밀소바', 'img/menu/메밀소바.jpg');
-- 일식 데이터

insert into menu1 values(menu1_seq.nextval, 4, '샐러드', 'img/menu/샐러드.jpg');
insert into menu1 values(menu1_seq.nextval, 4, '스파게티', 'img/menu/스파게티.jfif');
insert into menu1 values(menu1_seq.nextval, 4, '파스타', 'img/menu/파스타.jpg');
insert into menu1 values(menu1_seq.nextval, 4, '피자', 'img/menu/피자.jpg');
insert into menu1 values(menu1_seq.nextval, 4, '함박스테이크', 'img/menu/함박스테이크.jpg');
insert into menu1 values(menu1_seq.nextval, 4, '햄버거', 'img/menu/햄버거.jfif');
-- 양식 데이터

insert into menu1 values(menu1_seq.nextval, 5, '그린커리', 'img/menu/그린커리.jfif');
insert into menu1 values(menu1_seq.nextval, 5, '쌀국수', 'img/menu/쌀국수.jpg');
insert into menu1 values(menu1_seq.nextval, 5, '쏨담', 'img/menu/쏨담.jfif');
insert into menu1 values(menu1_seq.nextval, 5, '카오팟', 'img/menu/카오팟.jpg');
insert into menu1 values(menu1_seq.nextval, 5, '팟타이', 'img/menu/팟타이.jfif');
insert into menu1 values(menu1_seq.nextval, 5, '푸팟퐁커리', 'img/menu/푸팟퐁커리.jfif');
insert into menu1 values(menu1_seq.nextval, 5, '똠양꿍', 'img/menu/똠양꿍.jfif');
-- 아시안 데이터

insert into menu1 values(menu1_seq.nextval, 6, '떡볶이', 'img/menu/떡볶이.jpg');
insert into menu1 values(menu1_seq.nextval, 6, '라멘', 'img/menu/라멘.jfif');
insert into menu1 values(menu1_seq.nextval, 6, '반반치킨', 'img/menu/반반치킨.png');
insert into menu1 values(menu1_seq.nextval, 6, '스파게티', 'img/menu/스파게티.jfif');
insert into menu1 values(menu1_seq.nextval, 6, '타코', 'img/menu/타코.jfif');
insert into menu1 values(menu1_seq.nextval, 6, '샌드위치', 'img/menu/샌드위치.jfif');
insert into menu1 values(menu1_seq.nextval, 6, '토스트', 'img/menu/토스트.jpg');
-- 분식 데이터

insert into menu1 values(menu1_seq.nextval, 7, '딸기스무디', 'img/menu/딸기스무디.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '바닐라라떼', 'img/menu/바닐라라떼.jpg');
insert into menu1 values(menu1_seq.nextval, 7, '바닐라프라페', 'img/menu/바닐라프라페.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '블루레몬에이드', 'img/menu/블루레몬에이드.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '아메리카노', 'img/menu/아메리카노.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '아이스크림', 'img/menu/아이스크림.jpg');
insert into menu1 values(menu1_seq.nextval, 7, '오곡라떼', 'img/menu/오곡라떼.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '와플', 'img/menu/와플.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '초코라떼', 'img/menu/초코라떼.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '카라멜마끼아또', 'img/menu/카라멜마끼아또.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '카페라떼', 'img/menu/카페라떼.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '카페모카', 'img/menu/카페모카.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '팥빙수', 'img/menu/팥빙수.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '플레인요거트스무디', 'img/menu/플레인요거트스무디.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '흑당밀크티', 'img/menu/흑당밀크티.jpg');
-- 커피 & 디저트 데이터

insert into menu1 values(999, 999, '기본이미지', 'img/icon/고민하는얼굴.png');

update menu1 set m_img = 'img/menu/샐러드.jpg' where m_no = 43;

select * from menu1;

drop sequence menu1_seq;
drop table menu1 cascade constraint purge;

delete menu1 where m_no = 4;