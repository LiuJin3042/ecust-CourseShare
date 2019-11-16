
/*�������ݿ�*/
 create database Lab3
 use Lab3
/*����Exam*/

 CREATE TABLE Exam 
 (Id varchar(17) not null primary key,--ѧ�����
 Name varchar(10) not null,--����
 Sex varchar(2),--�Ա�
 Age integer,--���� 
 score numeric(6,2),--�ܳɼ�
 address varchar(50),--��ַ
 Memo varchar(100),--��ע
 );

/*��Insert Into�����Exam�������6����¼*/

Insert into Exam values
('A0001','��һ','��',20,580.00,'����-3-5','ѧϰίԱ'),
('A0002','Ǯ��','Ů',19,540.00,'�ϸ�Է-2-9','�೤'),
('A0003','����','��',21,555.50,'ѧ������-5-15','���㹲����Ա'),
('A0004','����','��',22,480.00,'����-2-22','���������Ϣ'),
('A0005','����','Ů',20,495.50,'ѧ������-4-8','���������Ϣ'),
('A0006','����','��',19,435.00,'�ϸ�Է-5-12','���������Ϣ')

/*�Ա�Exam��Score�ֶν���һ����ΪIndexScore����������*/
create index IndexScore on Exam(Score asc)

/*������ͼViewExam���ֶ�ViewExam1��ViewExam2�ֱ��Ӧ��Exam��Name��Address�ֶΡ�*/

create view ViewExam(ViewExam1,ViewExam2)
as
select Name,address
from Exam


/*����jm��*/

create table Jm(
Jmbm varchar(20) primary key,
Jmhz varchar(50),
Jmbz image,
);



/*����Zjm��*/

create table Zjm(
Zjmbm varchar(20) primary key,
Zjmhz varchar(50),
Jmbm varchar(20),
Zjmbz image,
constraint c1 foreign key (Jmbm) references Jm(Jmbm)/*��������Jm���е�jmbm��zjm���е�jmbm����ȵģ�*/
)


/*����Dhshow��*/

create table Dhshow(
Dhh varchar(20),
Sl1 numeric(6,2),
Sl3 numeric(6,2),
Sl39 varchar(20),
Sl40 varchar(20),
constraint c2 foreign key (Sl40) references Zjm(Zjmbm)/*Zjm���е�zjmbm��dhshow���е�sl40����ȵġ�*/
)






/*��˵����dhshow���е�sl1��sl3�ֶεļƷѵ�λ�Ǳ�����֡�*/

/*��������*/

insert into Jm values
('01','���ž�1','������'),
('02','���ž�2','�����'),
('03','���ž�3','�¸���')
insert into Zjm values
('0001','���ž�1�Ӿ�1','01','����'),
('0002','���ž�1�Ӿ�2','01','����'),
('0003','���ž�2�Ӿ�1','02','������')
insert into Dhshow values
('123456789',2.03,1.24,'001','0001'),
('234567891',1.57,0.65,'001','0002'),
('345678912',1.78,0.99,'002','0001'),
('456789123',2.90,0.64,'002','0003'),
('567891234',2.90,10.94,'002','0001'),
('678912345',0,10.64,'003','0001'),
('789123456',5.23,10.64,'003','0002')


/*��SELECT��䣬��ĳһ������������ƽ���Ƕ��ٷ�����ҡ�*/

SELECT   Sl39 AS ����, AVG(Sl1) AS ��������
FROM      Dhshow
GROUP BY Sl39
HAVING   (Sl39 = '001')


/*��SELECT��䣬��ĳһ�����л������ܶ����10Ԫ����Ҳ��ҳ������Ѳ�Ϊ��ĵ绰���롣*/
SELECT   Sl39 AS ����, Dhh AS �绰����
FROM      Dhshow
WHERE   (Sl3 > 1000) AND (Sl1 <> 0) AND (Sl39 = '003')




/*��SELECT��䣬��ѯÿһ�绰�ָ�������Щ�Ӿ֣�*/

select Jmbm, Zjmbm
from Zjm



/*��SELECT��䣬��ѯÿһ�Ӿֵĳ������ܶ*/
SELECT   Sl40, SUM(Sl1) AS sum
FROM      Dhshow
GROUP BY Sl40



/*��SELECT��䣬��ѯÿһ�绰�ֵĳ������ܶ*/


create view D(sd,sum1)
as
select Sl40,sum(Sl1)	
from Dhshow
group by Sl40


SELECT   Zjm.Jmbm AS '���žֱ���', SUM(D.sum1) AS '�绰�ֵĳ������ܶ�'
FROM      D CROSS JOIN
                Zjm
WHERE   (D.sd = Zjm.Zjmbm)
GROUP BY Zjm.Jmbm
