create database lab3;

/*�������ݿ�*/
create table Exam
(
 Id Varchar(17) not null primary key, --ѧ�����
 Name Varchar(10) not null, --����
 Sex Char(2) Not null check(sex='��' or sex='Ů'), --�Ա�
 Age Datetime null, --����
 Prof Varchar(10) null, --ְ��
 Deptno Char(4) not null,
 foreign key(Deptno) references department(Deptno),
);
