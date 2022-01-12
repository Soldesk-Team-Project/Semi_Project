create table restaurant1 (
	r_no number(20) primary key,
	r_name varchar2(100 char)not null,
	r_place varchar2(100 char)not null,
	r_img varchar2(200 char)not null,
	r_lat number(30,25) not null,
	r_lng number(30,25) not null
);
create sequence restaurant1_seq start with 1 increment by 1;

insert into RESTAURANT1 values(restaurant1_seq.nextval, '한솥', '서울 종로구 종로12길 10', 'img/restaurant/한솥.jfif', 37.56984597865609, 126.98570002864828);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '수운', '서울 종로구 우정국로 26 센트로폴리스 2층', 'img/restaurant/수운.jfif', 37.57176490175568, 126.98338270563723); 
insert into RESTAURANT1 values(restaurant1_seq.nextval, '엄용백돼지국밥', '서울 종로구 인사동3길 20', 'img/restaurant/엄용백돼지국밥.jfif', 37.57209478978207, 126.98583441330759); 
insert into RESTAURANT1 values(restaurant1_seq.nextval, '막내회집', '서울 종로구 우정국로 4-1', 'img/restaurant/막내회집.jfif', 37.56934706852657, 126.98325034029666);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '숙달돼지', '서울 종로구 종로8길 15', 'img/restaurant/숙달돼지.jfif', 37.569548464152234, 126.98411052680208);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '한우공방', '서울 종로구 종로8길 15', 'img/restaurant/한우공방.jfif', 37.569548464152234, 126.98411052680208);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '삼숙이라면', '서울 종로구 종로11길 30', 'img/restaurant/삼숙이라면.jfif', 37.57169522999274, 126.98556796913175);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '쟁반집', '서울 종로구 종로8길 17 1층', 'img/restaurant/쟁반집.jfif', 37.56942118764555, 126.98418859981311);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '우정낙지', '서울 종로구 삼일대로17길 46 2층', 'img/restaurant/우정낙지.jfif', 37.56950937965551, 126.98490344029636);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '맛찬들', '서울 종로구 삼일대로17길 35', 'img/restaurant/맛찬들.jfif', 37.56919273399323, 126.98550999981323);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '무교동낙지', '서울 종로구 청계천로 77-1', 'img/restaurant/무교동낙지.jfif', 37.56872786621352, 126.98622125748349);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '황소고집', '서울 종로구 청계천로 75-2', 'img/restaurant/황소고집.jfif', 37.568685346615574, 126.98611396913162);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '왕비집', '서울 종로구 삼일대로15길 24', 'img/restaurant/왕비집.jfif', 37.569076965336734, 126.9861890556371);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '된장예술과술', '서울 종로구 삼일대로15길 20', 'img/restaurant/된장예술과술.jfif', 37.56900933818564, 126.98647815748356);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '무쏘', '서울 종로구 삼일대로17길 23', 'img/restaurant/무쏘.jfif', 37.56921576498806, 126.98616056913161);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '미도갈비', '서울 종로구 삼일대로15길 25 1층', 'img/restaurant/미도갈비.jfif', 37.56887605800013, 126.98606752680205);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '양연화로', '서울 종로구 삼일대로17길 18', 'img/restaurant/양연화로.jfif', 37.56945099141252, 126.98647746913161);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '개미집', '서울 종로구 종로12길 23 2층', 'img/restaurant/개미집.jfif', 37.56910926915105, 126.98584415379088);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '종로정육식당', '서울 종로구 종로14길 20', 'img/restaurant/종로정육식당.jfif', 37.569273176477026, 126.98682109981307);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '꽃피는산골', '서울 종로구 종로11길 17', 'img/restaurant/꽃피는산골.jfif', 37.571292085316365, 126.985526553791);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '경복궁식당', '서울 종로구 종로 65 1층 112호', 'img/restaurant/경복궁식당.jfif', 37.5706145577517, 126.98474224214289);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '김가네', '서울 종로구 종로 65', 'img/restaurant/김가네.jfif', 37.572464663852266, 126.98285039981319);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '맛있는김치찜', '서울 종로구 우정국로2길 31', 'img/restaurant/맛있는김치찜.jfif', 37.56983487105906, 126.98484942680213);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '오징어청춘', '서울 종로구 삼일대로19길 15', 'img/restaurant/오징어청춘.jfif', 37.56958936020994, 126.98666428262618);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '유가네', '서울 종로구 삼일대로19길 15 삼진빌딩', 'img/restaurant/유가네.jfif', 37.569631463943715, 126.98660232495568);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '장혁민의부대찌개', '서울 종로구 종로14길 26', 'img/restaurant/장혁민의부대찌개.jfif', 37.56910508085561, 126.98668052495574);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '미당순두부', '서울 종로구 청계천로 97-12', 'img/restaurant/미당순두부.jfif', 37.56888268151575, 126.98820069981313);
-- 한식

insert into RESTAURANT1 values(restaurant1_seq.nextval, '짬뽕지존', '서울 종로구 삼일대로15길 25 101호', 'img/restaurant/짬뽕지존.jfif', 37.5688675540994, 126.98604606913166);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '우육면관', '서울 종로구 청계천로 75-2', 'img/restaurant/우육면관.jfif', 37.56867684269306, 126.98598522310937);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '샤오바오우육면', '서울 종로구 삼일대로17길 15', 'img/restaurant/샤오바오우육면.jfif', 37.56927468423264, 126.98659004029655);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '미각', '서울 종로구 삼일대로17길 16', 'img/restaurant/미각.jfif', 37.569406449072666, 126.98665955563725);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '상해', '서울 종로구 삼일대로 382', 'img/restaurant/상해.jfif', 37.56889618539938, 126.98793941146127);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '만보성', '서울 종로구 종로12길 22', 'img/restaurant/만보성.jfif', 37.56925940759322, 126.98561871515405);
-- 중식

insert into RESTAURANT1 values(restaurant1_seq.nextval, '신주쿠카레', '서울 종로구 삼일대로 390 1층', 'img/restaurant/신주쿠카레.jfif', 37.56940594907372, 126.98789808262616);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '코코이찌방', '서울 종로구 종로 51 지하2층', 'img/restaurant/코코이찌방.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '미도인', '서울 종로구 종로 51 지하2층', 'img/restaurant/미도인.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '시타마치', '서울 종로구 종로 51 지하1층', 'img/restaurant/시타마치.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '오로지라멘', '서울 종로구 종로14길 16 1층', 'img/restaurant/오로지라멘.jfif', 37.5694300374651, 126.98675691146138);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '갓덴스시', '서울 종로구 종로12길 14', 'img/restaurant/갓덴스시.jfif', 37.56958866021161, 126.98552898262616);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '종로돈부리', '서울 종로구 삼일대로 385', 'img/restaurant/종로돈부리.jfif', 37.56913228467164, 126.98749207282437);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '미카도스시', '서울 종로구 종로 87-1 2층', 'img/restaurant/미카도스시.jfif', 37.57063728003181, 126.98730045563728);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '하마다', '서울 종로구 종로12길 23 포인트23빌딩', 'img/restaurant/하마다.jfif', 37.56913478076754, 126.98603727282426);
-- 일식

insert into RESTAURANT1 values(restaurant1_seq.nextval, '빠레뜨한남', '서울 종로구 우정국로2길 8 1층', 'img/restaurant/빠레뜨한남.jfif', 37.56956596026593, 126.98347905563728);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '애슐리', '서울 종로구 종로 51 종로타워 지하1층', 'img/restaurant/애슐리.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '바비레드', '서울 종로구 종로 51 종로타워 지하1층', 'img/restaurant/바비레드.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '슈가스컬', '서울 종로구 우정국로2길 29 8~9층', 'img/restaurant/슈가스컬.jfif', 37.56985627862574, 126.98475711330748);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '르브와', '서울 종로구 우정국로2길 42 4층', 'img/restaurant/르브와.jfif', 37.56968791365987, 126.98527633845003);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '더피자필', '서울 종로구 종로10길 21 1층', 'img/restaurant/더피자필.jfif', 37.569146665161576, 126.98448798262609);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '어게인리프레쉬', '서울 종로구 삼일대로 383 2층', 'img/restaurant/어게인리프레쉬.jfif', 37.56905017320918, 126.98739285563727);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '비스트로라꼼마', '서울 종로구 청계천로 85 지하 1층', 'img/restaurant/비스트로라꼼마.jfif', 37.56879306211925, 126.9871741556374);
-- 양식

insert into restaurant1 values(restaurant1_seq.nextval, '맘스터치', '서울 종로구 종로 62-1 2층', 'img/restaurant/맘스터치.jfif', 37.569980117591186, 126.98440094214286);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '써브웨이', '서울 종로구 종로 77 통일빌딩', 'img/restaurant/써브웨이.jfif', 37.57037422088062, 126.98566114058171);
insert into RESTAURANT1 values(restaurant1_seq.nextval, 'KFC', '서울 종로구 종로 88', 'img/restaurant/KFC.jfif', 37.57008975901014, 126.9871690979669);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '교촌치킨', '서울 종로구 종로12길 15 코아빌딩 1층', 'img/restaurant/교촌치킨.jfif', 37.569519914224045, 126.98602295563727);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '또보겠지', '서울 종로구 삼일대로19길 6 2층', 'img/restaurant/또보겠지.jfif', 37.56985378244722, 126.98718501146129);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '죠스떡볶이', '서울 종로구 종로10길 5 신우빌딩', 'img/restaurant/죠스떡볶이.jfif', 37.56993027610755, 126.98452426026078);
-- 분식

insert into RESTAURANT1 values(restaurant1_seq.nextval, '포브라더스', '서울 종로구 종로 51', 'img/restaurant/포브라더스.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '에머이', '서울 종로구 종로12길 6-20', 'img/restaurant/에머이.jfif', 37.569988863045964, 126.98456881146141);
-- 아시안

insert into RESTAURANT1 values(restaurant1_seq.nextval, '스타벅스', '서울 종로구 종로 64', 'img/restaurant/스타벅스.jfif', 37.570147881540706, 126.98451736913171);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '베스킨라빈스', '서울 종로구 종로12길 9', 'img/restaurant/베스킨라빈스.jfif', 37.569795271167585, 126.98588979796689);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '빽다방', '서울 종로구 종로10길 21', 'img/restaurant/빽다방.jfif', 37.56916367289833, 126.9845738133076);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '설빙', '서울 종로구 종로 74 영안빌딩', 'img/restaurant/설빙.jfif', 37.570128777816684, 126.98568712864838);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '투썸플레이스', '서울 종로구 종로 72', 'img/restaurant/투썸플레이스.jfif', 37.57006324772284, 126.98536416913174);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '할리스', '서울 종로구 종로10길 21', 'img/restaurant/할리스.jfif', 37.56913816129176, 126.98448798262609);
-- 카페

insert into RESTAURANT1 values(restaurant1_seq.nextval, '스시소라', '서울 종로구 종로 19', 'img/restaurant/스시소라.jfif', 37.570990360530224, 126.97996168631883);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '폴루이트', '서울 종로구 우정국로2길 41', 'img/restaurant/폴루이트.jfif', 37.5697812483023, 126.98549221515395);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '반쥴', '서울 종로구 삼일대로17길 23 3층', 'img/restaurant/반쥴.jfif', 37.56916474180184, 126.98619275563718);
-- 데이터 추가

select * from restaurant1;

delete RESTAURANT1 where r_no = 81;

select * from restaurant1 where r_name like '%����%';

drop sequence restaurant1_seq;
drop table restaurant1 cascade constraint purge;