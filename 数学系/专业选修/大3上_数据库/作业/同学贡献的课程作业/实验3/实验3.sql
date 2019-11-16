create database test
use test
/*1.��Create Table����Exam*/
create table Exam
(
Id varchar(17),
Name varchar(10),
Sex varchar(2),
Age integer,
score numeric(6,2),
address varchar(50),
Memo varchar(100),
)
/*2.��Insert Into�����Exam�������6����¼*/
insert into Exam values
('A0001','��һ','��',20,580.00,'����-3-5','ѧϰίԱ'),
('A0002','Ǯ��','Ů',19,540.00,'�ϸ�Է-2-9','�೤'),
('A0003','����','��',21,555.50,'ѧ������-5-15','���㹲����Ա'),
('A0004','����','��',22,480.00,'����-2-22','���������Ϣ'),
('A0005','����','Ů',20,495.50,'ѧ������-4-8','���������Ϣ'),
('A0006','����','��',19,435.00,'�ϸ�Է-5-12','���������Ϣ')
/*3.�Ա�Exam��Score�ֶν���һ����ΪIndexScore������������*/
create index IndexScore on Exam(Score asc)
/*4.������ͼViewExam���ֶ�ViewExam1��ViewExam2�ֱ��Ӧ��Exam��Name��Address�ֶΡ�*/
create view ViewExam(ViewExam1,ViewExam2)
as
select Name,address
from Exam
/*5.ĳ���žּƷѲ���*/
create table Jm(
Jmbm varchar(20) primary key,
Jmhz varchar(50),
Jmbz image,
)
create table Zjm(
Zjmbm varchar(20) primary key,
Zjmhz varchar(50),
Jmbm varchar(20),
Zjmbz image,
constraint c1 foreign key (Jmbm) references Jm(Jmbm)
)
create table Dhshow(
Dhh varchar(20),
Sl1 numeric(6,2),
Sl3 numeric(6,2),
Sl39 varchar(20),
Sl40 varchar(20),
constraint c2 foreign key (Sl40) references Zjm(Zjmbm)
)
insert into Jm values
('01','���ž�1',null),
('02','���ž�2',null),
('03','���ž�3',null)
insert into Zjm values
('0001','���ž�1�Ӿ�1','01',null),
('0002','���ž�1�Ӿ�2','01',null),
('0003','���ž�2�Ӿ�1','02',null)
insert into Dhshow values
('123456789',2.03,1.24,'001','0001'),
('234567891',1.57,0.65,'001','0002'),
('345678912',1.78,0.99,'002','0001'),
('456789123',2.90,0.64,'002','0003'),
('567891234',2.90,10.94,'002','0001'),
('678912345',0,10.64,'003','0001'),
('789123456',5.23,10.64,'003','0002')
/*6����SELECT��䣬��ĳһ������������ƽ���Ƕ��ٷ�����ҡ�*/
select Sl39 ����,AVG(Sl1) ��������
from Dhshow
group by Sl39 having Sl39='001'
/*7����SELECT��䣬��ĳһ�����л������ܶ����10������Ҳ��ҳ������Ѳ�Ϊ��ĵ绰���롣*/
select Sl39 ����,Dhh �绰����
from Dhshow
where Sl3>10 and Sl1 !=0 and Sl39='003'
/*8����SELECT��䣬��ѯÿһ�绰�ָ�������Щ�Ӿ֣�*/
select Jmbm, Zjmbm
from Zjm
/*9����SELECT��䣬��ѯÿһ�Ӿֵĳ������ܶ*/
select Sl40,sum(Sl1) sum
from Dhshow
group by Sl40
/*10����SELECT��䣬��ѯÿһ�绰�ֵĳ������ܶ*/
create view D(sd,sum1)
as
select Sl40,sum(Sl1)
from Dhshow
group by Sl40

select Zjm.Jmbm '���žֱ���',SUM(D.sum1) '�绰�ֵĳ������ܶ�'
from D,Zjm
where D.sd=Zjm.Zjmbm
group by Zjm.Jmbm
