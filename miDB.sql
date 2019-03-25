--------------------------------------------------------
--  ������ ������ - ������-3��-25-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ALARM
--------------------------------------------------------

  CREATE TABLE "MI"."ALARM" 
   (	"ALARM_ID" NUMBER, 
	"GROUP_ID" VARCHAR2(15 BYTE), 
	"ALARM_CONTENT" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CHAT
--------------------------------------------------------

  CREATE TABLE "MI"."CHAT" 
   (	"CHAT_ID" NUMBER, 
	"CHAT_CONTENT" VARCHAR2(300 BYTE), 
	"CHAT_TIME" DATE DEFAULT SYSDATE, 
	"CHATROOM_ID" NUMBER, 
	"MEMBER_ID" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CHATROOM
--------------------------------------------------------

  CREATE TABLE "MI"."CHATROOM" 
   (	"CHATROOM_ID" NUMBER, 
	"CHATROOM_NAME" VARCHAR2(30 BYTE), 
	"CHATROOM_ADMIN" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CHATROOM_BY_MEMBER
--------------------------------------------------------

  CREATE TABLE "MI"."CHATROOM_BY_MEMBER" 
   (	"MEMBER_ID" VARCHAR2(15 BYTE), 
	"CHATROOM_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "MI"."EVENT" 
   (	"EVENT_ID" VARCHAR2(30 BYTE), 
	"TITLE" VARCHAR2(40 BYTE), 
	"START_DATE" DATE DEFAULT SYSDATE, 
	"END_DATE" DATE, 
	"GROUP_ID" VARCHAR2(15 BYTE), 
	"MEMO" VARCHAR2(200 BYTE), 
	"FILE_PATH" VARCHAR2(200 BYTE), 
	"PREPAIRING_ID" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EVENT_COMMENT
--------------------------------------------------------

  CREATE TABLE "MI"."EVENT_COMMENT" 
   (	"EVENT_COMMENT_NO" NUMBER, 
	"EVENT_COMMENT_LEVEL" NUMBER DEFAULT 1, 
	"EVENT_COMMENT_WRITER" VARCHAR2(20 BYTE), 
	"EVENT_COMMENT_CONTENT" VARCHAR2(200 BYTE), 
	"EVENT_REF" VARCHAR2(20 BYTE), 
	"EVENT_COMMENT_REF" NUMBER, 
	"EVENT_COMMENT_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "MI"."EVENT_COMMENT"."EVENT_COMMENT_NO" IS '������۹�ȣ';
   COMMENT ON COLUMN "MI"."EVENT_COMMENT"."EVENT_COMMENT_LEVEL" IS '������� ����';
   COMMENT ON COLUMN "MI"."EVENT_COMMENT"."EVENT_COMMENT_WRITER" IS '������� �ۼ���';
   COMMENT ON COLUMN "MI"."EVENT_COMMENT"."EVENT_COMMENT_CONTENT" IS '�������';
   COMMENT ON COLUMN "MI"."EVENT_COMMENT"."EVENT_REF" IS '�������۹�ȣ';
   COMMENT ON COLUMN "MI"."EVENT_COMMENT"."EVENT_COMMENT_REF" IS '������� ������ȣ';
   COMMENT ON COLUMN "MI"."EVENT_COMMENT"."EVENT_COMMENT_DATE" IS '������� �ۼ���';
--------------------------------------------------------
--  DDL for Table GROUP_BY_MEMBER
--------------------------------------------------------

  CREATE TABLE "MI"."GROUP_BY_MEMBER" 
   (	"GROUP_ID" VARCHAR2(30 BYTE), 
	"MEMBER_ID" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GROUP_TBL
--------------------------------------------------------

  CREATE TABLE "MI"."GROUP_TBL" 
   (	"GROUP_ID" VARCHAR2(30 BYTE), 
	"GROUP_NAME" VARCHAR2(30 BYTE), 
	"GROUP_CAPTIN" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MI"."MEMBER" 
   (	"MEMBER_ID" VARCHAR2(15 BYTE), 
	"PASSWORD" VARCHAR2(300 BYTE), 
	"MEMBER_NAME" VARCHAR2(20 BYTE), 
	"PHONE" CHAR(11 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER_BY_EVENT
--------------------------------------------------------

  CREATE TABLE "MI"."MEMBER_BY_EVENT" 
   (	"MEMBER_ID" VARCHAR2(15 BYTE), 
	"EVENT_ID" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ALARM_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MI"."SEQ_ALARM_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CHATROOM_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MI"."SEQ_CHATROOM_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CHAT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MI"."SEQ_CHAT_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 32 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_EVENT_COMMENT_NO
--------------------------------------------------------

   CREATE SEQUENCE  "MI"."SEQ_EVENT_COMMENT_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_EVENT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MI"."SEQ_EVENT_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 27 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_GROUP_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MI"."SEQ_GROUP_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE ;
REM INSERTING into MI.ALARM
SET DEFINE OFF;
REM INSERTING into MI.CHAT
SET DEFINE OFF;
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (1,'����
',to_date('19/02/28','RR/MM/DD'),1,'miri');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (2,'�ȳ��ϼ���
',to_date('19/02/28','RR/MM/DD'),2,'miri');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (3,'hi
',to_date('19/02/28','RR/MM/DD'),1,'janghyun');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (4,'MI ��ǥ������~~~ȭ����
',to_date('19/02/28','RR/MM/DD'),3,'miri');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (5,'ȭ����
',to_date('19/02/28','RR/MM/DD'),3,'janghyun');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (6,'�̸��� ���̵���~~
',to_date('19/02/28','RR/MM/DD'),3,'miri');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (7,'����
',to_date('19/02/28','RR/MM/DD'),1,'miri');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (8,'��������
',to_date('19/02/28','RR/MM/DD'),3,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (9,'�������� ����~~~
',to_date('19/02/28','RR/MM/DD'),3,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (10,'��������
',to_date('19/02/28','RR/MM/DD'),3,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (11,'�ȳ��ϼ���
',to_date('19/02/28','RR/MM/DD'),3,'miri');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (12,'������
',to_date('19/02/28','RR/MM/DD'),3,'jaemin');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (13,'�׽�Ʈ
',to_date('19/02/28','RR/MM/DD'),3,'miri');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (14,'���� ������ �� ����?
',to_date('19/02/28','RR/MM/DD'),3,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (15,'�����
',to_date('19/02/28','RR/MM/DD'),3,'jaemin');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (16,'����Ŀ�
',to_date('19/02/28','RR/MM/DD'),3,'jaemin');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (17,'�����
',to_date('19/02/28','RR/MM/DD'),3,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (18,'
',to_date('19/02/28','RR/MM/DD'),3,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (19,'����࿩ ��
',to_date('19/02/28','RR/MM/DD'),3,'jaemin');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (20,'�����մϴ�
',to_date('19/02/28','RR/MM/DD'),3,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (21,'��������
',to_date('19/02/28','RR/MM/DD'),3,'jaemin');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (22,'����',to_date('19/02/28','RR/MM/DD'),3,'miri');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (23,'����??
',to_date('19/02/28','RR/MM/DD'),3,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (24,'��!!
',to_date('19/02/28','RR/MM/DD'),3,'jaemin');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (25,'���ο� ä���̴�~~
',to_date('19/02/28','RR/MM/DD'),6,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (26,'�ȳ�
',to_date('19/02/28','RR/MM/DD'),6,'miri');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (27,'�̾�~~
',to_date('19/02/28','RR/MM/DD'),6,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (28,'��������
',to_date('19/02/28','RR/MM/DD'),6,'jaemin');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (29,'����Ŀ�
',to_date('19/02/28','RR/MM/DD'),6,'jaemin');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (30,'��������
',to_date('19/02/28','RR/MM/DD'),6,'jinwoo');
Insert into MI.CHAT (CHAT_ID,CHAT_CONTENT,CHAT_TIME,CHATROOM_ID,MEMBER_ID) values (31,'���̿�
',to_date('19/02/28','RR/MM/DD'),6,'jaemin');
REM INSERTING into MI.CHATROOM
SET DEFINE OFF;
Insert into MI.CHATROOM (CHATROOM_ID,CHATROOM_NAME,CHATROOM_ADMIN) values (1,'�̸�������','miri');
Insert into MI.CHATROOM (CHATROOM_ID,CHATROOM_NAME,CHATROOM_ADMIN) values (2,'�б�ģ��','miri');
Insert into MI.CHATROOM (CHATROOM_ID,CHATROOM_NAME,CHATROOM_ADMIN) values (3,'MIä�ù�','miri');
Insert into MI.CHATROOM (CHATROOM_ID,CHATROOM_NAME,CHATROOM_ADMIN) values (4,'��Ÿ','jinwoo');
Insert into MI.CHATROOM (CHATROOM_ID,CHATROOM_NAME,CHATROOM_ADMIN) values (5,'�׽�Ʈ','miri');
Insert into MI.CHATROOM (CHATROOM_ID,CHATROOM_NAME,CHATROOM_ADMIN) values (6,'�׽�Ʈ��','miri');
REM INSERTING into MI.CHATROOM_BY_MEMBER
SET DEFINE OFF;
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('janghyun',1);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('ilgyo',1);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('jinwoo',1);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('jaemin',1);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('miri',1);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('janghyun',2);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('jaemin',2);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('miri',2);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('ilgyo',3);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('janghyun',3);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('jinwoo',3);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('jaemin',3);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('miri',3);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('jaemin',4);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('jinwoo',4);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('jinwoo',5);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('miri',5);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('ilgyo',6);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('jinwoo',6);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('jaemin',6);
Insert into MI.CHATROOM_BY_MEMBER (MEMBER_ID,CHATROOM_ID) values ('miri',6);
REM INSERTING into MI.EVENT
SET DEFINE OFF;
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E1','������Ʈ��ǥ',to_date('19/02/28','RR/MM/DD'),to_date('19/02/28','RR/MM/DD'),'G1','������Ʈ ��ǥ!! ȭ����~','KakaoTalk_20190228_153901573.jpg','miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E3','������ ����!',to_date('19/02/22','RR/MM/DD'),to_date('19/02/22','RR/MM/DD'),'G4','ġ�� ���!!','images.jpg','miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E4','��ġ ����Ű��',to_date('19/02/18','RR/MM/DD'),to_date('19/02/18','RR/MM/DD'),null,'�����',null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E5','��ȹ�ȹ�ǥ',to_date('19/02/22','RR/MM/DD'),to_date('19/02/22','RR/MM/DD'),'G1',null,'KakaoTalk_20190228_1539015731.jpg','miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E6','STUDY',to_date('19/02/12','RR/MM/DD'),to_date('19/02/12','RR/MM/DD'),'G2',null,'KakaoTalk_20190228_153907748.jpg','miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E7','STUDY',to_date('19/02/07','RR/MM/DD'),to_date('19/02/07','RR/MM/DD'),'G2',null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E8','�߽��� ������',to_date('19/02/14','RR/MM/DD'),to_date('19/02/14','RR/MM/DD'),null,null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E9','��Ű��',to_date('19/02/16','RR/MM/DD'),to_date('19/02/17','RR/MM/DD'),'G5',null,'KakaoTalk_20190228_1539015732.jpg','miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E10','����۾�',to_date('19/02/27','RR/MM/DD'),to_date('19/02/27','RR/MM/DD'),null,null,'KakaoTalk_20190228_153906178.jpg','miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E11','���������� ������',to_date('19/01/16','RR/MM/DD'),to_date('19/01/16','RR/MM/DD'),'G2',null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E12','��������',to_date('19/01/17','RR/MM/DD'),to_date('19/01/17','RR/MM/DD'),'G1',null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E13','�κ� ������',to_date('19/01/21','RR/MM/DD'),to_date('19/01/21','RR/MM/DD'),null,null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E14','��������',to_date('19/02/19','RR/MM/DD'),to_date('19/02/20','RR/MM/DD'),'G2',null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E15','����',to_date('19/02/04','RR/MM/DD'),to_date('19/02/05','RR/MM/DD'),'G1',null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E16','�����ƹ���',to_date('19/02/11','RR/MM/DD'),to_date('19/02/13','RR/MM/DD'),'G4',null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E17','����ô�',to_date('19/03/16','RR/MM/DD'),to_date('19/03/19','RR/MM/DD'),'G1',null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E18','���ö��Ƚα�',to_date('19/02/09','RR/MM/DD'),to_date('19/02/09','RR/MM/DD'),'G1',null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E19','������',to_date('19/02/21','RR/MM/DD'),to_date('19/02/21','RR/MM/DD'),null,null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E20','�Ǵ� �粿ġ ��!!',to_date('19/02/23','RR/MM/DD'),to_date('19/02/23','RR/MM/DD'),null,null,null,'jaemin');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E21','�����~',to_date('19/01/21','RR/MM/DD'),to_date('19/01/23','RR/MM/DD'),null,null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E22','�ָ�',to_date('19/01/25','RR/MM/DD'),to_date('19/01/27','RR/MM/DD'),'G2',null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E23','���ֵ���������',to_date('19/02/03','RR/MM/DD'),to_date('19/02/03','RR/MM/DD'),null,null,'KakaoTalk_20190228_1539015733.jpg','miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E24','���ֵ����� �ö����',to_date('19/02/07','RR/MM/DD'),to_date('19/02/07','RR/MM/DD'),null,null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E25','������ ����',to_date('19/02/10','RR/MM/DD'),to_date('19/02/11','RR/MM/DD'),'G4',null,null,'miri');
Insert into MI.EVENT (EVENT_ID,TITLE,START_DATE,END_DATE,GROUP_ID,MEMO,FILE_PATH,PREPAIRING_ID) values ('E26','�׽�Ʈ',to_date('19/02/28','RR/MM/DD'),to_date('19/02/28','RR/MM/DD'),'G5','ȭ����!!','Tulips3.jpg,Penguins8.jpg,Lighthouse11.jpg,Hydrangeas13.jpg,Desert13.jpg,Chrysanthemum11.jpg','miri');
REM INSERTING into MI.EVENT_COMMENT
SET DEFINE OFF;
Insert into MI.EVENT_COMMENT (EVENT_COMMENT_NO,EVENT_COMMENT_LEVEL,EVENT_COMMENT_WRITER,EVENT_COMMENT_CONTENT,EVENT_REF,EVENT_COMMENT_REF,EVENT_COMMENT_DATE) values (1,1,'jaemin','ġ�� JMT!!!!JMTGR~~~','E3',null,to_date('19/02/28','RR/MM/DD'));
REM INSERTING into MI.GROUP_BY_MEMBER
SET DEFINE OFF;
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G1','jaemin');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G1','miri');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G2','miri');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G2','admin');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G4','janghyun');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G4','ilgyo');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G4','miri');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G4','jinwoo');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G4','jaemin');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G5','janghyun');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G5','miri');
Insert into MI.GROUP_BY_MEMBER (GROUP_ID,MEMBER_ID) values ('G5','jaemin');
REM INSERTING into MI.GROUP_TBL
SET DEFINE OFF;
Insert into MI.GROUP_TBL (GROUP_ID,GROUP_NAME,GROUP_CAPTIN) values ('G1','RCLASS','admin');
Insert into MI.GROUP_TBL (GROUP_ID,GROUP_NAME,GROUP_CAPTIN) values ('G2','MI','admin');
Insert into MI.GROUP_TBL (GROUP_ID,GROUP_NAME,GROUP_CAPTIN) values ('G3','����','miri');
Insert into MI.GROUP_TBL (GROUP_ID,GROUP_NAME,GROUP_CAPTIN) values ('G4','�̸�������','janghyun');
Insert into MI.GROUP_TBL (GROUP_ID,GROUP_NAME,GROUP_CAPTIN) values ('G5','�б�ģ��','janghyun');
Insert into MI.GROUP_TBL (GROUP_ID,GROUP_NAME,GROUP_CAPTIN) values ('G6','�׽�Ʈ','miri');
REM INSERTING into MI.MEMBER
SET DEFINE OFF;
Insert into MI.MEMBER (MEMBER_ID,PASSWORD,MEMBER_NAME,PHONE,EMAIL) values ('admin','1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==','������','01012345678','admin@muchInformation.com');
Insert into MI.MEMBER (MEMBER_ID,PASSWORD,MEMBER_NAME,PHONE,EMAIL) values ('miri','OACcqwenMa3nVvbBNSIN6wDVW6iHqZjm10lza8jijHP+YJePfTJBVPdto1qIJffvPjIau0ixZIE7u55LloxlqQ==','��̸�','0109291633 ','miri@muchInformation.com');
Insert into MI.MEMBER (MEMBER_ID,PASSWORD,MEMBER_NAME,PHONE,EMAIL) values ('jinwoo','1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==','������','01092916339','jinwoo@muchInformation.com');
Insert into MI.MEMBER (MEMBER_ID,PASSWORD,MEMBER_NAME,PHONE,EMAIL) values ('jaemin','1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==','�����','01098765432','jaemin@muchInformation.com');
Insert into MI.MEMBER (MEMBER_ID,PASSWORD,MEMBER_NAME,PHONE,EMAIL) values ('ilgyo','1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==','���ϱ�','01034232345','ilgyo@muchInformation.com');
Insert into MI.MEMBER (MEMBER_ID,PASSWORD,MEMBER_NAME,PHONE,EMAIL) values ('janghyun','1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==','������','01058952235','janghyun@muchInformation.com');
REM INSERTING into MI.MEMBER_BY_EVENT
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_COMMENT_NO
--------------------------------------------------------

  CREATE UNIQUE INDEX "MI"."PK_COMMENT_NO" ON "MI"."EVENT_COMMENT" ("EVENT_COMMENT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CHAT
--------------------------------------------------------

  CREATE UNIQUE INDEX "MI"."PK_CHAT" ON "MI"."CHAT" ("CHAT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CHATROOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MI"."PK_CHATROOM" ON "MI"."CHATROOM" ("CHATROOM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MI"."MEMBER" ADD PRIMARY KEY ("MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MI"."MEMBER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "MI"."MEMBER" MODIFY ("MEMBER_NAME" NOT NULL ENABLE);
  ALTER TABLE "MI"."MEMBER" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CHATROOM
--------------------------------------------------------

  ALTER TABLE "MI"."CHATROOM" ADD CONSTRAINT "PK_CHATROOM" PRIMARY KEY ("CHATROOM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MI"."CHATROOM" MODIFY ("CHATROOM_NAME" NOT NULL ENABLE);
  ALTER TABLE "MI"."CHATROOM" MODIFY ("CHATROOM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALARM
--------------------------------------------------------

  ALTER TABLE "MI"."ALARM" ADD PRIMARY KEY ("ALARM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MI"."ALARM" MODIFY ("GROUP_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENT_COMMENT
--------------------------------------------------------

  ALTER TABLE "MI"."EVENT_COMMENT" ADD CONSTRAINT "PK_COMMENT_NO" PRIMARY KEY ("EVENT_COMMENT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUP_BY_MEMBER
--------------------------------------------------------

  ALTER TABLE "MI"."GROUP_BY_MEMBER" ADD PRIMARY KEY ("GROUP_ID", "MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHATROOM_BY_MEMBER
--------------------------------------------------------

  ALTER TABLE "MI"."CHATROOM_BY_MEMBER" ADD PRIMARY KEY ("MEMBER_ID", "CHATROOM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MI"."CHATROOM_BY_MEMBER" MODIFY ("CHATROOM_ID" NOT NULL ENABLE);
  ALTER TABLE "MI"."CHATROOM_BY_MEMBER" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GROUP_TBL
--------------------------------------------------------

  ALTER TABLE "MI"."GROUP_TBL" ADD PRIMARY KEY ("GROUP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MI"."GROUP_TBL" MODIFY ("GROUP_CAPTIN" NOT NULL ENABLE);
  ALTER TABLE "MI"."GROUP_TBL" MODIFY ("GROUP_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "MI"."CHAT" ADD CONSTRAINT "PK_CHAT" PRIMARY KEY ("CHAT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MI"."CHAT" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "MI"."CHAT" MODIFY ("CHATROOM_ID" NOT NULL ENABLE);
  ALTER TABLE "MI"."CHAT" MODIFY ("CHAT_TIME" NOT NULL ENABLE);
  ALTER TABLE "MI"."CHAT" MODIFY ("CHAT_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "MI"."CHAT" MODIFY ("CHAT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "MI"."EVENT" ADD PRIMARY KEY ("EVENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MI"."EVENT" MODIFY ("PREPAIRING_ID" NOT NULL ENABLE);
  ALTER TABLE "MI"."EVENT" MODIFY ("END_DATE" NOT NULL ENABLE);
  ALTER TABLE "MI"."EVENT" MODIFY ("START_DATE" NOT NULL ENABLE);
  ALTER TABLE "MI"."EVENT" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER_BY_EVENT
--------------------------------------------------------

  ALTER TABLE "MI"."MEMBER_BY_EVENT" ADD PRIMARY KEY ("MEMBER_ID", "EVENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "MI"."CHAT" ADD FOREIGN KEY ("CHATROOM_ID")
	  REFERENCES "MI"."CHATROOM" ("CHATROOM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHATROOM_BY_MEMBER
--------------------------------------------------------

  ALTER TABLE "MI"."CHATROOM_BY_MEMBER" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "MI"."MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MI"."CHATROOM_BY_MEMBER" ADD FOREIGN KEY ("CHATROOM_ID")
	  REFERENCES "MI"."CHATROOM" ("CHATROOM_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVENT_COMMENT
--------------------------------------------------------

  ALTER TABLE "MI"."EVENT_COMMENT" ADD CONSTRAINT "FK_COMMENT_REF" FOREIGN KEY ("EVENT_COMMENT_REF")
	  REFERENCES "MI"."EVENT_COMMENT" ("EVENT_COMMENT_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MI"."EVENT_COMMENT" ADD CONSTRAINT "FK_COMMENT_WRITER" FOREIGN KEY ("EVENT_COMMENT_WRITER")
	  REFERENCES "MI"."MEMBER" ("MEMBER_ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "MI"."EVENT_COMMENT" ADD CONSTRAINT "FK_REF" FOREIGN KEY ("EVENT_REF")
	  REFERENCES "MI"."EVENT" ("EVENT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUP_BY_MEMBER
--------------------------------------------------------

  ALTER TABLE "MI"."GROUP_BY_MEMBER" ADD FOREIGN KEY ("GROUP_ID")
	  REFERENCES "MI"."GROUP_TBL" ("GROUP_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MI"."GROUP_BY_MEMBER" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "MI"."MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBER_BY_EVENT
--------------------------------------------------------

  ALTER TABLE "MI"."MEMBER_BY_EVENT" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "MI"."MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MI"."MEMBER_BY_EVENT" ADD FOREIGN KEY ("EVENT_ID")
	  REFERENCES "MI"."EVENT" ("EVENT_ID") ON DELETE CASCADE ENABLE;