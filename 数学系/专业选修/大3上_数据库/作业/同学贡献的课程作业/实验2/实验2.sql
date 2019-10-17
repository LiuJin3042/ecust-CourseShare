/*1�� �������ݿ�,Ҫ�󣺴�����һ��Employee���ݿ�*/
create database Employee
use Employee
/*2,3�� ������Ҫ��ʹ��SQl��䴴��һ����Ա��Ϣ��person,һ����н��salary��һ�����ű�department��*/
CREATE TABLE department
(Deptno char(4) not null primary key,--���Ŵ��룬����
Dname varchar(10) not null--��������
);
CREATE TABLE person
(Pno char(6) not null primary key,--���˱�ţ�����
Pname varchar(10) not null,--����
Sex char(2) not null check(sex='��'or sex='Ů'),--�Ա�
Birthday datetime,--��������
Prof varchar(10),--ְ��
Deptno char(4) not null,--���Ŵ���
FOREIGN KEY(Deptno) REFERENCES department(Deptno),
CONSTRAINT sex_rule CHECK(Sex='��' OR Sex='Ů')
);
CREATE TABLE salary
(Pno char(6) not null,--���˱��
base dec(5) check(base>=300),--�������ʣ�Ҫ��base>=300��
Bonus dec(5) check(bonus>=50),--����Ҫ��bonus>=50��
Fact as base+Bonus,--ʵ������=��������+����
Month int not null,--�·�
primary key(Pno,Month),--��Pno��Month��Ϊ����
FOREIGN KEY(Pno) REFERENCES person(Pno)
);
/*7�� ����sql��䴴����ͼҪ���ڹ�Ա��Ϣ��person�����ϴ���Ա����ͼpersonview,���а������˱�ţ�������ְ�ƣ��Ա�Ͳ��Ŵ����ֶΡ�*/
CREATE VIEW personview
as
SELECT Pno,Pname,Prof,Sex,Deptno from person
/*8�� Ϊ��������
Ҫ��
��1) �ڳ������ں������д����������birth_name
��2) ���������ϴ���һ��Ψһ����name_unique
��3) ����н��salary��Fact���ϴ����۴�����fact_idx
��4) ɾ������fact_idx��*/
CREATE UNIQUE INDEX birth_name ON person(Birthday,Pname);
CREATE UNIQUE INDEX name_unique ON person(Pname);
CREATE CLUSTERED INDEX fact_idx ON salary(fact);
DROP INDEX fact_idx ON salary;
alter table salary drop constraint PK__salary__EAD90B71CEC4E6A1
/*ִ�����������Ҫִ����������� �ָ���������������û��*/
ALTER TABLE salary
ADD PRIMARY KEY(Pno,Month)
/*��������1������в�������Ҫ�󣺰��±���ʾ�����person, salary, department�в�������*/
INSERT INTO department values
('001','Ӫ����'), 
('002','����'), 
('003','��ʶ��'), 
('004','�ɹ���') 
INSERT INTO person values 
('000001','����','��','1982-4-7','����','001'), 
('000002','����','��','1953-2-14','�߼�','001'), 
('000003','����','Ů','1984-8-25','����','002'), 
('000004','����','��','1984-5-11','����','002'), 
('000005','�޴���','��','1968-12-10','�߼�','002'), 
('000006','����','Ů','1978-4-20','�м�','003'), 
('000007','����','Ů','1960-5-14','�߼�','001'), 
('000008','���»�','��','1971-2-19','�߼�','003'), 
('000009','����','��','1973-10-9','�м�','002') 
INSERT INTO salary(Pno,base,bonus,Month)values
('000001',2100,500,1) ,
('000002',3000,600,1) ,
('000003',2800,450,1) ,
('000004',2500,340,1) ,
('000005',3200,490,1) ,
('000006',2700,600,1) ,
('000007',4000,200,1) ,
('000008',2800,350,1) ,
('000009',2760,400,1) ,
('000001',2400,600,2) ,
('000002',2800,400,2) ,
('000003',2860,350,2) ,
('000004',2540,320,2) ,
('000005',3200,480,2) ,
('000006',2700,300,2) ,
('000007',4000,250,2) ,
('000008',2800,300,2) ,
('000009',2760,480,2) ,
('000001',2200,500,3) ,
('000002',3100,400,3) ,
('000003',2800,650,3) ,
('000004',2500,540,3) ,
('000005',3200,400,3) ,
('000006',2700,680,3) ,
('000007',4100,400,3) ,
('000008',2000,330,3) ,
('000009',2760,420,3)
/*
��2����ְ�����Ϊ000006��Ա��3�·ݻ�����������Ϊ3000���������ӵ�800��
��3��Ա��000009�Ѿ��뿪��˾������Ա��������ɾ��
��4������ͼpersinview�в���һ����¼����000011��������ΰ�������С������߼�������004����
��5������ͼpersonviewɾ��
*/
select * from salary 
UPDATE salary 
SET base='3000' 
WHERE Pno='000006' and Month='3' 
UPDATE salary 
SET bonus='800' 
WHERE Pno='000006' and Month='3'
DELETE salary 
WHERE Pno='000009' 
DELETE person 
WHERE Pno='000009' 
INSERT INTO personview 
VALUES('000011','��ΰ','�߼�','��','004') 
DROP VIEW personview
/*��6����������ѯ
a.��ѯperson�������в��ظ���ְ�ơ�
b.��ѯ���и߼�ְ�Ƶ�ŮԱ����Ϣ
c.��ѯְ������Ϊ������Ա������
d.��ѯ�����ŵ�ʵ����������
*/
SELECT Prof 
FROM person 
GROUP BY Prof
SELECT * 
FROM person 
WHERE Prof='�߼�' and Sex='Ů'
SELECT * 
FROM person 
WHERE Pname='����' 
SELECT Deptno,SUM(Fact) 
FROM salary,person 
WHERE salary.Pno=person.Pno 
GROUP BY Deptno 
/*��7������������ѯ
a.��ѯƽ�����ʸ���3000�Ĳ������Ͷ�Ӧ��ƽ�����ʡ�
b.��ѯ1�·�ʵ�����ʱ�ƽ��ʵ�����ʸߵ�Ա��������ʵ�����ʶ
c.��ѯ2�·�ʵ�����ʱ�һ�¸ߵ�Ա��������
d.����sql��佫1��2��3���ۻ���Ա����ʵ�����ʰ���������
*/
SELECT Deptno,AVG(Fact) 
FROM salary,person 
WHERE salary.Pno=person.Pno 
GROUP BY Deptno 
HAVING AVG(Fact)>=3000 
SELECT Pname,Fact 
FROM salary,person 
WHERE salary.Pno=person.Pno and salary.Month='1' 
and salary.Fact>(SELECT AVG(Fact)FROM salary) 
SELECT Pname,Fact 
FROM salary,person 
WHERE salary.Pno=person.Pno 
and salary.Month='2' 
and salary.Fact>( 
SELECT Fact 
FROM salary 
WHERE salary.Pno=person.Pno 
and salary.Month='1' 
) 
SELECT Pname,SUM(Fact) 
FROM salary,person 
WHERE salary.Pno=person.Pno 
GROUP BY Pname 
ORDER BY SUM(Fact) DESC
