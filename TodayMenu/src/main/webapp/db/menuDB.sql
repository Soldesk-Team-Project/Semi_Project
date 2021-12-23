create table menu1 (
	m_no number(20) primary key,
	m_category number(20) not null,
	m_name varchar2(20 char) not null,
	m_img varchar2(100 char) not null
);

create sequence menu1_seq start with 1 increment by 1; 

insert into menu1 values(menu1_seq.nextval, 1, '���κ��', 'img/menu/���κ��.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '�Ǻ����', 'img/menu/�Ǻ����.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '������', 'img/menu/������.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '������Ұ����', 'img/menu/������Ұ����.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '����', 'img/menu/����.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '������', 'img/menu/������.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '��ġ������', 'img/menu/��ġ������.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '��ġ��', 'img/menu/��ġ��.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '��������', 'img/menu/��������.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '�ø�', 'img/menu/�ø�.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '��ġ�̱���', 'img/menu/��ġ�̱���.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '��������', 'img/menu/��������.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '�������', 'img/menu/�������.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '�κα�ġ', 'img/menu/�κα�ġ.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '��������', 'img/menu/��������.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '��ȸ', 'img/menu/��ȸ.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '�����', 'img/menu/�����.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '������', 'img/menu/������.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '�δ��', 'img/menu/�δ��.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '�����', 'img/menu/�����.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '�Ұ��', 'img/menu/�Ұ��.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '��������', 'img/menu/��������.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '�¸�', 'img/menu/�¸�.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '������', 'img/menu/������.jfif');
insert into menu1 values(menu1_seq.nextval, 1, '�屹��', 'img/menu/�屹��.jpg');
insert into menu1 values(menu1_seq.nextval, 1, '���', 'img/menu/���.jpg');
insert into menu1 values(menu1_seq.nextval, 1, 'ȸ', 'img/menu/ȸ.jpg');
insert into menu1 values(menu1_seq.nextval, 1, 'ȸ����', 'img/menu/ȸ����.jfif');
-- �ѽ� ������

insert into menu1 values(menu1_seq.nextval, 2, '������', 'img/menu/������.jfif');
insert into menu1 values(menu1_seq.nextval, 2, '������', 'img/menu/������.jfif');
insert into menu1 values(menu1_seq.nextval, 2, '���ĵκ�', 'img/menu/���ĵκ�.jfif');
insert into menu1 values(menu1_seq.nextval, 2, '¥���', 'img/menu/¥���.jpg');
insert into menu1 values(menu1_seq.nextval, 2, '«��', 'img/menu/«��.jpg');
-- �߽� ������

insert into menu1 values(menu1_seq.nextval, 3, '���', 'img/menu/���.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '���ɵ�', 'img/menu/���ɵ�.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '�����ٵ�', 'img/menu/�����ٵ�.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '�쳪�⵿', 'img/menu/�쳪�⵿.jpg');
insert into menu1 values(menu1_seq.nextval, 3, '�Ͻĵ�����', 'img/menu/�Ͻĵ�����.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '������', 'img/menu/������.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '�ʹ�', 'img/menu/�ʹ�.jfif');
insert into menu1 values(menu1_seq.nextval, 3, 'ī����', 'img/menu/ī����.jfif');
insert into menu1 values(menu1_seq.nextval, 3, '�޹мҹ�', 'img/menu/�޹мҹ�.jpg');
-- �Ͻ� ������

insert into menu1 values(menu1_seq.nextval, 4, '������', 'img/menu/������.jpg');
insert into menu1 values(menu1_seq.nextval, 4, '���İ�Ƽ', 'img/menu/���İ�Ƽ.jfif');
insert into menu1 values(menu1_seq.nextval, 4, '�Ľ�Ÿ', 'img/menu/�Ľ�Ÿ.jpg');
insert into menu1 values(menu1_seq.nextval, 4, '����', 'img/menu/����.jpg');
insert into menu1 values(menu1_seq.nextval, 4, '�Թڽ�����ũ', 'img/menu/�Թڽ�����ũ.jpg');
insert into menu1 values(menu1_seq.nextval, 4, '�ܹ���', 'img/menu/�ܹ���.jfif');
-- ��� ������

insert into menu1 values(menu1_seq.nextval, 5, '�׸�Ŀ��', 'img/menu/�׸�Ŀ��.jfif');
insert into menu1 values(menu1_seq.nextval, 5, '�ұ���', 'img/menu/�ұ���.jpg');
insert into menu1 values(menu1_seq.nextval, 5, '����', 'img/menu/����.jfif');
insert into menu1 values(menu1_seq.nextval, 5, 'ī����', 'img/menu/ī����.jpg');
insert into menu1 values(menu1_seq.nextval, 5, '��Ÿ��', 'img/menu/��Ÿ��.jfif');
insert into menu1 values(menu1_seq.nextval, 5, 'Ǫ����Ŀ��', 'img/menu/Ǫ����Ŀ��.jfif');
insert into menu1 values(menu1_seq.nextval, 5, '�c���', 'img/menu/�c���.jfif');
-- �ƽþ� ������

insert into menu1 values(menu1_seq.nextval, 6, '������', 'img/menu/������.jpg');
insert into menu1 values(menu1_seq.nextval, 6, '���', 'img/menu/���.jfif');
insert into menu1 values(menu1_seq.nextval, 6, '�ݹ�ġŲ', 'img/menu/�ݹ�ġŲ.png');
insert into menu1 values(menu1_seq.nextval, 6, '���İ�Ƽ', 'img/menu/���İ�Ƽ.jfif');
insert into menu1 values(menu1_seq.nextval, 6, 'Ÿ��', 'img/menu/Ÿ��.jfif');
insert into menu1 values(menu1_seq.nextval, 6, '������ġ', 'img/menu/������ġ.jfif');
insert into menu1 values(menu1_seq.nextval, 6, '�佺Ʈ', 'img/menu/�佺Ʈ.jpg');
-- �н� ������

insert into menu1 values(menu1_seq.nextval, 7, '���⽺����', 'img/menu/���⽺����.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '�ٴҶ��', 'img/menu/�ٴҶ��.jpg');
insert into menu1 values(menu1_seq.nextval, 7, '�ٴҶ�������', 'img/menu/�ٴҶ�������.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '��緹���̵�', 'img/menu/��緹���̵�.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '�Ƹ޸�ī��', 'img/menu/�Ƹ޸�ī��.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '���̽�ũ��', 'img/menu/���̽�ũ��.jpg');
insert into menu1 values(menu1_seq.nextval, 7, '�����', 'img/menu/�����.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '����', 'img/menu/����.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '���ڶ�', 'img/menu/���ڶ�.jfif');
insert into menu1 values(menu1_seq.nextval, 7, 'ī��Ḷ���ƶ�', 'img/menu/ī��Ḷ���ƶ�.jfif');
insert into menu1 values(menu1_seq.nextval, 7, 'ī���', 'img/menu/ī���.jfif');
insert into menu1 values(menu1_seq.nextval, 7, 'ī���ī', 'img/menu/ī���ī.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '�Ϻ���', 'img/menu/�Ϻ���.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '�÷��ο��Ʈ������', 'img/menu/�÷��ο��Ʈ������.jfif');
insert into menu1 values(menu1_seq.nextval, 7, '����ũƼ', 'img/menu/����ũƼ.jpg');
-- Ŀ�� & ����Ʈ ������

insert into menu1 values(999, 999, '�⺻�̹���', 'img/icon/����ϴ¾�.png');

update menu1 set m_img = 'img/menu/������.jpg' where m_no = 43;

select * from menu1;

drop sequence menu1_seq;
drop table menu1 cascade constraint purge;

delete menu1 where m_no = 4;