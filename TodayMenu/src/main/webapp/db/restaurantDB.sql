create table restaurant1 (
	r_no number(20) primary key,
	r_name varchar2(100 char)not null,
	r_place varchar2(100 char)not null,
	r_img varchar2(200 char)not null,
	r_lat number(30,25) not null,
	r_lng number(30,25) not null
);
create sequence restaurant1_seq start with 1 increment by 1;

insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ѽ�', '���� ���α� ����12�� 10', 'img/restaurant/�Ѽ�.jfif', 37.56984597865609, 126.98570002864828);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����', '���� ���α� �������� 26 ��Ʈ�������� 2��', 'img/restaurant/����.jfif', 37.57176490175568, 126.98338270563723); 
insert into RESTAURANT1 values(restaurant1_seq.nextval, '������������', '���� ���α� �λ絿3�� 20', 'img/restaurant/������������.jfif', 37.57209478978207, 126.98583441330759); 
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����ȸ��', '���� ���α� �������� 4-1', 'img/restaurant/����ȸ��.jfif', 37.56934706852657, 126.98325034029666);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '���޵���', '���� ���α� ����8�� 15', 'img/restaurant/���޵���.jfif', 37.569548464152234, 126.98411052680208);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�ѿ����', '���� ���α� ����8�� 15', 'img/restaurant/�ѿ����.jfif', 37.569548464152234, 126.98411052680208);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����̶��', '���� ���α� ����11�� 30', 'img/restaurant/����̶��.jfif', 37.57169522999274, 126.98556796913175);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�����', '���� ���α� ����8�� 17 1��', 'img/restaurant/�����.jfif', 37.56942118764555, 126.98418859981311);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '��������', '���� ���α� ���ϴ��17�� 46 2��', 'img/restaurant/��������.jfif', 37.56950937965551, 126.98490344029636);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '������', '���� ���α� ���ϴ��17�� 35', 'img/restaurant/������.jfif', 37.56919273399323, 126.98550999981323);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����������', '���� ���α� û��õ�� 77-1', 'img/restaurant/����������.jfif', 37.56872786621352, 126.98622125748349);
insert into RESTAURANT1 values(restaurant1_seq.nextval, 'Ȳ�Ұ���', '���� ���α� û��õ�� 75-2', 'img/restaurant/Ȳ�Ұ���.jfif', 37.568685346615574, 126.98611396913162);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�պ���', '���� ���α� ���ϴ��15�� 24', 'img/restaurant/�պ���.jfif', 37.569076965336734, 126.9861890556371);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '���忹������', '���� ���α� ���ϴ��15�� 20', 'img/restaurant/���忹������.jfif', 37.56900933818564, 126.98647815748356);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����', '���� ���α� ���ϴ��17�� 23', 'img/restaurant/����.jfif', 37.56921576498806, 126.98616056913161);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�̵�����', '���� ���α� ���ϴ��15�� 25 1��', 'img/restaurant/�̵�����.jfif', 37.56887605800013, 126.98606752680205);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�翬ȭ��', '���� ���α� ���ϴ��17�� 18', 'img/restaurant/�翬ȭ��.jfif', 37.56945099141252, 126.98647746913161);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '������', '���� ���α� ����12�� 23 2��', 'img/restaurant/������.jfif', 37.56910926915105, 126.98584415379088);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '���������Ĵ�', '���� ���α� ����14�� 20', 'img/restaurant/���������Ĵ�.jfif', 37.569273176477026, 126.98682109981307);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '���Ǵ»��', '���� ���α� ����11�� 17', 'img/restaurant/���Ǵ»��.jfif', 37.571292085316365, 126.985526553791);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�溹�ýĴ�', '���� ���α� ���� 65 1�� 112ȣ', 'img/restaurant/�溹�ýĴ�.jfif', 37.5706145577517, 126.98474224214289);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�谡��', '���� ���α� ���� 65', 'img/restaurant/�谡��.jfif', 37.572464663852266, 126.98285039981319);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '���ִ±�ġ��', '���� ���α� ��������2�� 31', 'img/restaurant/���ִ±�ġ��.jfif', 37.56983487105906, 126.98484942680213);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '��¡��û��', '���� ���α� ���ϴ��19�� 15', 'img/restaurant/��¡��û��.jfif', 37.56958936020994, 126.98666428262618);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '������', '���� ���α� ���ϴ��19�� 15 ��������', 'img/restaurant/������.jfif', 37.569631463943715, 126.98660232495568);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�������Ǻδ��', '���� ���α� ����14�� 26', 'img/restaurant/�������Ǻδ��.jfif', 37.56910508085561, 126.98668052495574);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�̴���κ�', '���� ���α� û��õ�� 97-12', 'img/restaurant/�̴���κ�.jfif', 37.56888268151575, 126.98820069981313);
-- �ѽ�

insert into RESTAURANT1 values(restaurant1_seq.nextval, '«������', '���� ���α� ���ϴ��15�� 25 101ȣ', 'img/restaurant/«������.jfif', 37.5688675540994, 126.98604606913166);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�������', '���� ���α� û��õ�� 75-2', 'img/restaurant/�������.jfif', 37.56867684269306, 126.98598522310937);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�����ٿ�������', '���� ���α� ���ϴ��17�� 15', 'img/restaurant/�����ٿ�������.jfif', 37.56927468423264, 126.98659004029655);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�̰�', '���� ���α� ���ϴ��17�� 16', 'img/restaurant/�̰�.jfif', 37.569406449072666, 126.98665955563725);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����', '���� ���α� ���ϴ�� 382', 'img/restaurant/����.jfif', 37.56889618539938, 126.98793941146127);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '������', '���� ���α� ����12�� 22', 'img/restaurant/������.jfif', 37.56925940759322, 126.98561871515405);
-- �߽�

insert into RESTAURANT1 values(restaurant1_seq.nextval, '������ī��', '���� ���α� ���ϴ�� 390 1��', 'img/restaurant/������ī��.jfif', 37.56940594907372, 126.98789808262616);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '���������', '���� ���α� ���� 51 ����2��', 'img/restaurant/���������.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�̵���', '���� ���α� ���� 51 ����2��', 'img/restaurant/�̵���.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '��Ÿ��ġ', '���� ���α� ���� 51 ����1��', 'img/restaurant/��Ÿ��ġ.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '���������', '���� ���α� ����14�� 16 1��', 'img/restaurant/���������.jfif', 37.5694300374651, 126.98675691146138);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '��������', '���� ���α� ����12�� 14', 'img/restaurant/��������.jfif', 37.56958866021161, 126.98552898262616);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '���ε��θ�', '���� ���α� ���ϴ�� 385', 'img/restaurant/���ε��θ�.jfif', 37.56913228467164, 126.98749207282437);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '��ī������', '���� ���α� ���� 87-1 2��', 'img/restaurant/��ī������.jfif', 37.57063728003181, 126.98730045563728);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�ϸ���', '���� ���α� ����12�� 23 ����Ʈ23����', 'img/restaurant/�ϸ���.jfif', 37.56913478076754, 126.98603727282426);
-- �Ͻ�

insert into RESTAURANT1 values(restaurant1_seq.nextval, '�������ѳ�', '���� ���α� ��������2�� 8 1��', 'img/restaurant/�������ѳ�.jfif', 37.56956596026593, 126.98347905563728);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�ֽ���', '���� ���α� ���� 51 ����Ÿ�� ����1��', 'img/restaurant/�ֽ���.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�ٺ񷹵�', '���� ���α� ���� 51 ����Ÿ�� ����1��', 'img/restaurant/�ٺ񷹵�.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '��������', '���� ���α� ��������2�� 29 8~9��', 'img/restaurant/��������.jfif', 37.56985627862574, 126.98475711330748);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�����', '���� ���α� ��������2�� 42 4��', 'img/restaurant/�����.jfif', 37.56968791365987, 126.98527633845003);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '��������', '���� ���α� ����10�� 21 1��', 'img/restaurant/��������.jfif', 37.569146665161576, 126.98448798262609);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����θ�������', '���� ���α� ���ϴ�� 383 2��', 'img/restaurant/����θ�������.jfif', 37.56905017320918, 126.98739285563727);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '��Ʈ�ζ�ĸ�', '���� ���α� û��õ�� 85 ���� 1��', 'img/restaurant/��Ʈ�ζ�ĸ�.jfif', 37.56879306211925, 126.9871741556374);
-- ���

insert into restaurant1 values(restaurant1_seq.nextval, '������ġ', '���� ���α� ���� 62-1 2��', 'img/restaurant/������ġ.jfif', 37.569980117591186, 126.98440094214286);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '������', '���� ���α� ���� 77 ���Ϻ���', 'img/restaurant/������.jfif', 37.57037422088062, 126.98566114058171);
insert into RESTAURANT1 values(restaurant1_seq.nextval, 'KFC', '���� ���α� ���� 88', 'img/restaurant/KFC.jfif', 37.57008975901014, 126.9871690979669);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����ġŲ', '���� ���α� ����12�� 15 �ھƺ��� 1��', 'img/restaurant/����ġŲ.jfif', 37.569519914224045, 126.98602295563727);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ǻ�����', '���� ���α� ���ϴ��19�� 6 2��', 'img/restaurant/�Ǻ�����.jfif', 37.56985378244722, 126.98718501146129);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�ҽ�������', '���� ���α� ����10�� 5 �ſ����', 'img/restaurant/�ҽ�������.jfif', 37.56993027610755, 126.98452426026078);
-- �н�

insert into RESTAURANT1 values(restaurant1_seq.nextval, '��������', '���� ���α� ���� 51', 'img/restaurant/��������.jfif', 37.57091156810851, 126.98361951330776);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '������', '���� ���α� ����12�� 6-20', 'img/restaurant/������.jfif', 37.569988863045964, 126.98456881146141);
-- �ƽþ�

insert into RESTAURANT1 values(restaurant1_seq.nextval, '��Ÿ����', '���� ���α� ���� 64', 'img/restaurant/��Ÿ����.jfif', 37.570147881540706, 126.98451736913171);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����Ų���', '���� ���α� ����12�� 9', 'img/restaurant/����Ų���.jfif', 37.569795271167585, 126.98588979796689);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '���ٹ�', '���� ���α� ����10�� 21', 'img/restaurant/���ٹ�.jfif', 37.56916367289833, 126.9845738133076);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����', '���� ���α� ���� 74 ���Ⱥ���', 'img/restaurant/����.jfif', 37.570128777816684, 126.98568712864838);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�����÷��̽�', '���� ���α� ���� 72', 'img/restaurant/�����÷��̽�.jfif', 37.57006324772284, 126.98536416913174);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ҹ���', '���� ���α� ����10�� 21', 'img/restaurant/�Ҹ���.jfif', 37.56913816129176, 126.98448798262609);
-- ī��

insert into RESTAURANT1 values(restaurant1_seq.nextval, '���üҶ�', '���� ���α� ���� 19', 'img/restaurant/���üҶ�.jfif', 37.570990360530224, 126.97996168631883);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '������Ʈ', '���� ���α� ��������2�� 41', 'img/restaurant/������Ʈ.jfif', 37.5697812483023, 126.98549221515395);
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����', '���� ���α� ���ϴ��17�� 23 3��', 'img/restaurant/����.jfif', 37.56916474180184, 126.98619275563718);
-- ������ �߰�

select * from restaurant1;

delete RESTAURANT1 where r_no = 81;

select * from restaurant1 where r_name like '%����%';

drop sequence restaurant1_seq;
drop table restaurant1 cascade constraint purge;