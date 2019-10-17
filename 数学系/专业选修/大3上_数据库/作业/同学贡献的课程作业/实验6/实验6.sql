create database work
use work
/*��������������ϵģʽ�����ֱ������Ӧ�����ݡ�*/
create table Worker(
ְ���� varchar(10),
���� char(10),
���� int,
ְ�� char(15),
���� int,
���ź� char(50)
)
create table Section (
���ź� char(10),
���� char(10),
������ char(10),
��ַ char(50),
�绰 char(15)
)
--���벿����Ϣ
insert into Section values('a001','�г�����','����','����','13750000000');
insert into Section values('a002','Ӫ������','���','����','13750000000');
--����ְ����Ϣ
insert into Worker values('a001001','����',20,'�г�Ӫ��Ա',2000,'a001');
insert into Worker values('a001002','���',29,'�г�Ӫ��Ա',2000,'a001');
insert into Worker values('a001003','����',20,'����',5000,'a001');
insert into Worker values('a002001','�޽�',18,'����Ա',2000,'a002');
insert into Worker values('a002002','���',24,'����Ա',2000,'a002');
insert into Worker values('a002003','���',32,'����',5000,'a002');
--��ѯ���ű��ְ���������
select *from Worker;
select *from Section
--sp_adduser���������Ϊ����User������������
--��sp_grantdbaccess�����Ϊ��������Ȩ�ޡ�
EXEC sp_addlogin '����','123'
EXEC sp_grantdbaccess '����'
EXEC sp_addlogin '���','123'
EXEC sp_grantdbaccess '���'
EXEC sp_addlogin '����','123'
EXEC sp_grantdbaccess '����'
EXEC sp_addlogin '�޽�','123'
EXEC sp_grantdbaccess '�޽�'
EXEC sp_addlogin '���','123'
EXEC sp_grantdbaccess '���'
EXEC sp_addlogin '���','123'
EXEC sp_grantdbaccess '���'
EXEC sp_addlogin '����','123'
EXEC sp_grantdbaccess '����'
EXEC sp_addlogin '����','123'
EXEC sp_grantdbaccess '����'
EXEC sp_addlogin '����','123'
EXEC sp_grantdbaccess '����'
EXEC sp_addlogin '��ƽ','123'
EXEC sp_grantdbaccess '��ƽ'
EXEC sp_addlogin '����','123'
EXEC sp_grantdbaccess '����'
/*��1������SQL��Grant��Revoke��䣨������ͼ���ƣ����������Ȩ������ȡ���ƹ��ܣ���������Ӧ�İ�ȫ�Բ��ԣ�*/
/*��a���û���������������selectȨ����*/
grant select on Worker to ����
grant select on Section to ����
/*��b���û����¶���������insert��deleteȨ����*/
grant insert,delete on Worker to ����
grant insert,delete on Section to ����
/*��c��ÿ��ְ��ֻ���Լ��ļ�¼��selectȨ����*/
create view ְ�� as select * from Worker where ����=user;
grant select on ְ�� to public
/*��d���û����Ƕ�ְ������selectȨ�����Թ����ֶξ��и���Ȩ����*/
GRANT SELECT,UPDATE(����) ON Worker TO ����
/*��e���û����¾����޸���������Ľṹ��Ȩ����*/
GRANT ALTER ON Worker TO ����
GRANT ALTER ON Section TO ����
/*��f���û���ƽ���ж�����������Ȩ�����ԣ��壬�ģ�ɾ���ݣ��������и������û���Ȩ��Ȩ����*/
GRANT select,update,insert,delete ON Worker TO ��ƽ WITH GRANT OPTION
GRANT select,update,insert,delete ON Section TO ��ƽ WITH GRANT OPTION
/*��g���û��������д�ÿ������ְ����select��߹��ʣ���͹��ʣ�ƽ�����ʵ�Ȩ���������ܲ鿴ÿ���˵Ĺ��ʡ�*/
CREATE VIEW ���Ź��� as select Section.����,MAX(����) as ��߹���,MIN(����) as ��͹���,AVG(����) as ƽ������
FROM Worker,Section WHERE Worker.���ź�=Section.���ź� GROUP BY Section.����
GRANT SELECT ON ���Ź��� TO ����
/*��2�������棨a������g����ÿһ��������������û��������Ȩ����*/ 
revoke select on Worker from ����
revoke select on Section from ����
revoke insert,delete on Worker from ����
revoke insert,delete on Section from ����
revoke select on ְ�� from public
revoke SELECT,UPDATE(����) ON Worker from ����
revoke ALTER ON Worker from ����
revoke ALTER ON Section from ����
revoke select,update,insert,delete ON Worker from ��ƽ CASCADE
revoke select,update,insert,delete ON Section from ��ƽ CASCADE
revoke SELECT ON ���Ź��� from ����