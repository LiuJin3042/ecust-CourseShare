Create database xscj
use xscj
/*1�� �� xscj ���ݿ��зֱ𴴽�ѧ������� xsqk�� �γ̱� kc�� ѧ����γ̱� xs_kc*/
CREATE TABLE xsqk
(ѧ�� CHAR(6) NOT NULL,
���� CHAR(8) NOT NULL,
�Ա� BIT NOT NULL DEFAULT 1,
���� SMALLDATETIME NOT NULL,
רҵ CHAR(10) NOT NULL,
����ϵ CHAR(10) NOT NULL,
��ϵ�绰 CHAR(11),
��ѧ�� TINYINT,
��ע TEXT,
CONSTRAINT PK_XSQK_XH PRIMARY KEY(ѧ��),
CONSTRAINT UQ_XSQK_DH UNIQUE(����),
CONSTRAINT CK_XSQK_XB CHECK(�Ա�=1 OR �Ա�=0),
CONSTRAINT CK_XSQK_DH CHECK (��ϵ�绰 LIKE '[1-9][1-9][1-9][1-9][1-9][1-9]'),
CONSTRAINT CK_XSQK_ZXF CHECK(��ѧ��>=0 AND ��ѧ��<=200)
)
CREATE TABLE KC
(��� INT IDENTITY,
�γ̺� CHAR(3) NOT NULL PRIMARY KEY(�γ̺�),
�γ��� CHAR(20) NOT NULL ,
�ڿν�ʦ CHAR(8),
����ѧ�� TINYINT NOT NULL DEFAULT 1,
ѧʱ TINYINT NOT NULL,
ѧ�� TINYINT,
CONSTRAINT CK_KC_XQ CHECK(����ѧ��>=1 AND ����ѧ��<=6)
)
CREATE TABLE XS_KC
(ѧ�� CHAR(6) NOT NULL REFERENCES XSQK(ѧ��),
�γ̺� CHAR(3) NOT NULL,
�ɼ� TINYINT CHECK(�ɼ�>=0 AND �ɼ�<=100),
ѧ�� TINYINT,
PRIMARY KEY(ѧ��,�γ̺�),
FOREIGN KEY(�γ̺�) REFERENCES KC(�γ̺�)
)
/*2���ֱ���xsqk,kc,xs_kc�����������ݣ����������û��Զ���*/
insert into xsqk values
('122315','��һ',1,'1997-3-5','Ӧ����ѧ','��ѧϵ','626286',20,'�೤'),
('154320','���',0,'1998-7-25','Ӧ����ѧ','��ѧϵ','218837',22,NULL),
('135825','����',1,'1997-9-17','��Ϣ����','��ѧϵ','243365',24,NULL),
('139093','����',0,'1998-5-7','Ӧ������','����ϵ','987655',25,NULL),
('187146','����',1,'1999-8-9','������','����ϵ','154558',22,'�೤')
insert into KC values
('001','��ѧ����','������',1,40,6),
('002','�ߵȴ���','���ķ�',1,45,4),
('003','��ѧӢ��','С��',3,36,5),
('004','���ݽṹ','�Ѻ���',4,41,5),
('101','���ݿ�','�Ѻ���',5,40,5)
insert into XS_KC values
('187146','002',40,5),
('122315','001',85,6),
('122315','002',90,4),
('154320','001',80,6),
('135825','003',86,5),
('139093','004',98,5),
('187146','003',78,5),
('187146','004',75,5),
('154320','101',90,5),
('135825','101',75,5),
('122315','101',80,5),
('122315','003',58,5),
('122315','004',56,5)
/*���ܲ�ѯ��*/
/*a.��KC���У�ͳ��ÿѧ�ڵ��ܷ���*/
select ����ѧ��,SUM(ѧ��)as ��ѧ��
from KC
group by ����ѧ��
/*b.��XS_KC����ͳ��ÿ��ѧ����ѡ�޿γ̵�����*/
select ѧ��,count(�γ̺�)as ѡ�޵Ŀγ�����
from xs_kc
group by ѧ��
/*c.ͳ��KC���е���ѧ��*/
select SUM(ѧ��)
from KC
/*e.��XS_KC���е����ݼ�¼��ѧ�ŷ�����ܣ����ѧ�ź�ƽ����*/
select ѧ��,AVG(�ɼ�)as ƽ����
from XS_KC
group by ѧ��
/*f.��ѯƽ���ִ���70��С��80��ѧ��ѧ�ź�ƽ����*/
select ѧ��,AVG(�ɼ�)as ƽ����
from XS_KC
group by ѧ��
having AVG(�ɼ�)>70 and AVG(�ɼ�)<80
/*g.��ѯXS_KC�����ѧ�š��γ̺š��ɼ�����ʹ��ѯ������Ȱ��տγ̺ŵ��������У����γ̺���ͬʱ�ٰ��ճɼ��������У�������ѯ������浽�±�TEMP_KC��*/
select ѧ��,�γ̺�,�ɼ�
into TEMP_KC
from xs_kc
order by �γ̺� asc,�ɼ� desc
select * from TEMP_KC
/*h.��ѯѡ���ˡ�101���γ̵�ѧ������߷ֺ���ͷ�*/
select �γ̺�, MAX(�ɼ�) ��߷�, MIN(�ɼ�) ��ͷ�
from xs_kc
group by �γ̺� having �γ̺�='101'
/*i.ͳ��ÿ��ѧ��������Ŀγ�����*/
select ����ѧ��,COUNT(�γ̺�) �γ�����
from KC
group by ����ѧ��
/*j.��ѯ��רҵ��ѧ������*/
select רҵ,COUNT(����) ѧ����
from xsqk
group by רҵ
/*���Ӳ�ѯ���Ӳ�ѯ*/
/*a.��ѯ������ѧ����ѧ�š��γ������ڿν�ʦ������ѧ�ڵ���Ϣ*/
select ѧ��,�γ���,�ڿν�ʦ,����ѧ��
from XS_KC,KC
where XS_KC.�γ̺�=KC.�γ̺� and �ɼ�<60
/*b.��ѧ�ŷ�������ָܷ���100��ѧ����¼�������ֵܷĽ�������*/
select ѧ��,SUM(�ɼ�) �ܳɼ�
from XS_KC
group by ѧ��
having SUM(�ɼ�)>100
order by SUM(�ɼ�)desc
/*c.ʹ���Ӳ�ѯ��ǡ�������ſγ̲������ѧ����Ϣ*/
select *
from xsqk
where ѧ�� in (select ѧ�� from XS_KC where �ɼ�<60 group by ѧ�� having COUNT(�γ̺�)=2 )
/*d.ʹ���Ӳ�ѯ��ѯÿ�ſγ̵���߷ֵ�ѧ����¼*/
select *
from xs_kc a,xsqk
where �ɼ�=(select max(�ɼ�) from xs_kc b where a.ѧ��=b.ѧ��) and (a.ѧ��=xsqk.ѧ��)
/*e.ʹ���Ӳ�ѯ��ѯÿ��ѧ������ͷֵĿγ̼�¼*/
select * from xs_kc a
where �ɼ�=(select min(�ɼ�) from xs_kc b where a.ѧ��=b.ѧ��)