create table restaurant1 (
	r_no number(20) primary key,
	r_name varchar2(100 char)not null,
	r_place varchar2(100 char)not null,
	r_img varchar2(200 char)not null,
	r_menu number(20) not null
);

create sequence restaurant1_seq start with 1 increment by 1;

insert into restaurant1 values(restaurant1_seq.nextval, '������ġ', '���� ���α� ���� 62-1 2��', 'img/restaurant/������ġ.jfif', 48); -- �ܹ���
insert into RESTAURANT1 values(restaurant1_seq.nextval, '������ġ', '���� ���α� ���� 62-1 2��', 'img/restaurant/������ġ.jfif', 58); -- ġŲ
insert into RESTAURANT1 values(restaurant1_seq.nextval, '������', '���� ���α� ���� 77 ���Ϻ���', 'img/restaurant/������.jfif', 76);  -- ������ġ
insert into RESTAURANT1 values(restaurant1_seq.nextval, 'KFC', '���� ���α� ���� 88', 'img/restaurant/KFC.jfif', 48); -- �ܹ���
insert into RESTAURANT1 values(restaurant1_seq.nextval, 'KFC', '���� ���α� ���� 88', 'img/restaurant/KFC.jfif', 58); -- ġŲ
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����ġŲ', '���� ���α� ����12�� 15 �ھƺ��� 1��', 'img/restaurant/����ġŲ.jfif', 48);  -- �ܹ���
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����ġŲ', '���� ���α� ����12�� 15 �ھƺ��� 1��', 'img/restaurant/����ġŲ.jfif', 58);  -- ġŲ
insert into RESTAURANT1 values(restaurant1_seq.nextval, '����ġŲ', '���� ���α� ����12�� 15 �ھƺ��� 1��', 'img/restaurant/����ġŲ.jfif', 38);  -- ���
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ѽ�', '���� ���α� ����12�� 10', 'img/restaurant/�Ѽ�.jfif', 1);  -- ���κ��
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ѽ�', '���� ���α� ����12�� 10', 'img/restaurant/�Ѽ�.jfif', 4);  --������Ұ�� ���
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ѽ�', '���� ���α� ����12�� 10', 'img/restaurant/�Ѽ�.jfif', 7);  -- ��ġ������
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ѽ�', '���� ���α� ����12�� 10', 'img/restaurant/�Ѽ�.jfif', 9);  -- ��������
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ѽ�', '���� ���α� ����12�� 10', 'img/restaurant/�Ѽ�.jfif', 17);  -- �����
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ѽ�', '���� ���α� ����12�� 10', 'img/restaurant/�Ѽ�.jfif', 18);  -- ������
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ѽ�', '���� ���α� ����12�� 10', 'img/restaurant/�Ѽ�.jfif', 34);  -- ���
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ѽ�', '���� ���α� ����12�� 10', 'img/restaurant/�Ѽ�.jfif', 38);  -- �Ͻĵ�����
insert into RESTAURANT1 values(restaurant1_seq.nextval, '�Ѽ�', '���� ���α� ����12�� 10', 'img/restaurant/�Ѽ�.jfif', 43);  -- ������
-- �н�ƮǪ����

select * from restaurant1;

drop sequence restaurant1_seq;
drop table restaurant1 cascade constraint purge;