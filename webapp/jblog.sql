--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-13-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_CATEGORY_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_CATEGORY_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 18 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_COMMENTS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_COMMENTS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POST_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_POST_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 165 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USERS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_USERS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BLOG
--------------------------------------------------------

  CREATE TABLE "JBLOG"."BLOG" 
   (	"ID" VARCHAR2(50 BYTE), 
	"BLOGTITLE" VARCHAR2(200 BYTE), 
	"LOGOFILE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "JBLOG"."CATEGORY" 
   (	"CATENO" NUMBER, 
	"ID" VARCHAR2(50 BYTE), 
	"CATENAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(500 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "JBLOG"."COMMENTS" 
   (	"CMTNO" NUMBER, 
	"POSTNO" NUMBER, 
	"USERNO" NUMBER, 
	"CMTCONTENT" VARCHAR2(1000 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "JBLOG"."POST" 
   (	"POSTNO" NUMBER, 
	"CATENO" NUMBER, 
	"POSTTITLE" VARCHAR2(300 BYTE), 
	"POSTCONTENT" VARCHAR2(4000 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "JBLOG"."USERS" 
   (	"USERNO" NUMBER, 
	"ID" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"JOINDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JBLOG.BLOG
SET DEFINE OFF;
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('aaaa','강호동의 강심장!','/upload/1628696579369113e1b2d-5456-4ae1-8307-9daef3b7bef4.jpg');
REM INSERTING into JBLOG.CATEGORY
SET DEFINE OFF;
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (15,'aaaa','Java 공부','Java 공부하는 카테고리입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (17,'aaaa','Spring 공부','Spring 공부 카테고리입니다.',to_date('21/08/13','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (14,'aaaa','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('21/08/12','RR/MM/DD'));
REM INSERTING into JBLOG.COMMENTS
SET DEFINE OFF;
REM INSERTING into JBLOG.POST
SET DEFINE OFF;
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (12,14,'미분류 페이지 입니다.','그게
무슨
소리
입니
까요
',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (13,15,'새로운 글 입니다.','새로운 글 입니다.
새로운 글 입니다.
새로운 글 입니다.
새로운 글 입니다.
새로운 글 입니다.
새로운 글 입니다.
새로운 글 입니다.
새로운 글 입니다.
새로운 글 입니다.
',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (14,14,'0. 테스트 제목 입니다.','0테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (15,14,'1. 테스트 제목 입니다.','1테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (16,14,'2. 테스트 제목 입니다.','2테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (17,14,'3. 테스트 제목 입니다.','3테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (10,15,'01. 자바 공부 글입니다.','01. 자바 공부 글입니다.
01. 자바 공부 글입니다.
01. 자바 공부 글입니다.
01. 자바 공부 글입니다.
01. 자바 공부 글입니다.
01. 자바 공부 글입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (11,15,'02. 자바 공부 글입니다.','02. 자바 공부 글입니다.
02. 자바 공부 글입니다.
02. 자바 공부 글입니다.
02. 자바 공부 글입니다.
02. 자바 공부 글입니다.
02. 자바 공부 글입니다.
02. 자바 공부 글입니다.
02. 자바 공부 글입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (18,14,'4. 테스트 제목 입니다.','4테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (19,14,'5. 테스트 제목 입니다.','5테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (20,14,'6. 테스트 제목 입니다.','6테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (21,14,'7. 테스트 제목 입니다.','7테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (22,14,'8. 테스트 제목 입니다.','8테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (23,14,'9. 테스트 제목 입니다.','9테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (24,14,'10. 테스트 제목 입니다.','10테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (25,14,'11. 테스트 제목 입니다.','11테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (26,14,'12. 테스트 제목 입니다.','12테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (27,14,'13. 테스트 제목 입니다.','13테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (28,14,'14. 테스트 제목 입니다.','14테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (29,14,'15. 테스트 제목 입니다.','15테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (30,14,'16. 테스트 제목 입니다.','16테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (31,14,'17. 테스트 제목 입니다.','17테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (32,14,'18. 테스트 제목 입니다.','18테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (33,14,'19. 테스트 제목 입니다.','19테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (34,14,'20. 테스트 제목 입니다.','20테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (35,14,'21. 테스트 제목 입니다.','21테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (36,14,'22. 테스트 제목 입니다.','22테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (37,14,'23. 테스트 제목 입니다.','23테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (38,14,'24. 테스트 제목 입니다.','24테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (39,14,'25. 테스트 제목 입니다.','25테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (40,14,'26. 테스트 제목 입니다.','26테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (41,14,'27. 테스트 제목 입니다.','27테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (42,14,'28. 테스트 제목 입니다.','28테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (43,14,'29. 테스트 제목 입니다.','29테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (44,14,'30. 테스트 제목 입니다.','30테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (45,14,'31. 테스트 제목 입니다.','31테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (46,14,'32. 테스트 제목 입니다.','32테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (47,14,'33. 테스트 제목 입니다.','33테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (48,14,'34. 테스트 제목 입니다.','34테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (49,14,'35. 테스트 제목 입니다.','35테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (50,14,'36. 테스트 제목 입니다.','36테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (51,14,'37. 테스트 제목 입니다.','37테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (52,14,'38. 테스트 제목 입니다.','38테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (53,14,'39. 테스트 제목 입니다.','39테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (54,14,'40. 테스트 제목 입니다.','40테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (55,14,'41. 테스트 제목 입니다.','41테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (56,14,'42. 테스트 제목 입니다.','42테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (57,14,'43. 테스트 제목 입니다.','43테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (58,14,'44. 테스트 제목 입니다.','44테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (59,14,'45. 테스트 제목 입니다.','45테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (60,14,'46. 테스트 제목 입니다.','46테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (61,14,'47. 테스트 제목 입니다.','47테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (62,14,'48. 테스트 제목 입니다.','48테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (63,14,'49. 테스트 제목 입니다.','49테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (64,14,'50. 테스트 제목 입니다.','50테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (65,14,'51. 테스트 제목 입니다.','51테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (66,14,'52. 테스트 제목 입니다.','52테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (67,14,'53. 테스트 제목 입니다.','53테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (68,14,'54. 테스트 제목 입니다.','54테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (69,14,'55. 테스트 제목 입니다.','55테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (70,14,'56. 테스트 제목 입니다.','56테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (71,14,'57. 테스트 제목 입니다.','57테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (72,14,'58. 테스트 제목 입니다.','58테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (73,14,'59. 테스트 제목 입니다.','59테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (74,14,'60. 테스트 제목 입니다.','60테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (75,14,'61. 테스트 제목 입니다.','61테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (76,14,'62. 테스트 제목 입니다.','62테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (77,14,'63. 테스트 제목 입니다.','63테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (78,14,'64. 테스트 제목 입니다.','64테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (79,14,'65. 테스트 제목 입니다.','65테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (80,14,'66. 테스트 제목 입니다.','66테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (81,14,'67. 테스트 제목 입니다.','67테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (82,14,'68. 테스트 제목 입니다.','68테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (83,14,'69. 테스트 제목 입니다.','69테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (84,14,'70. 테스트 제목 입니다.','70테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (85,14,'71. 테스트 제목 입니다.','71테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (86,14,'72. 테스트 제목 입니다.','72테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (87,14,'73. 테스트 제목 입니다.','73테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (88,14,'74. 테스트 제목 입니다.','74테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (89,14,'75. 테스트 제목 입니다.','75테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (90,14,'76. 테스트 제목 입니다.','76테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (91,14,'77. 테스트 제목 입니다.','77테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (92,14,'78. 테스트 제목 입니다.','78테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (93,14,'79. 테스트 제목 입니다.','79테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (94,14,'80. 테스트 제목 입니다.','80테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (95,14,'81. 테스트 제목 입니다.','81테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (96,14,'82. 테스트 제목 입니다.','82테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (97,14,'83. 테스트 제목 입니다.','83테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (98,14,'84. 테스트 제목 입니다.','84테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (99,14,'85. 테스트 제목 입니다.','85테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (100,14,'86. 테스트 제목 입니다.','86테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (101,14,'87. 테스트 제목 입니다.','87테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (102,14,'88. 테스트 제목 입니다.','88테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (103,14,'89. 테스트 제목 입니다.','89테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (104,14,'90. 테스트 제목 입니다.','90테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (105,14,'91. 테스트 제목 입니다.','91테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (106,14,'92. 테스트 제목 입니다.','92테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (107,14,'93. 테스트 제목 입니다.','93테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (108,14,'94. 테스트 제목 입니다.','94테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (109,14,'95. 테스트 제목 입니다.','95테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (110,14,'96. 테스트 제목 입니다.','96테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (111,14,'97. 테스트 제목 입니다.','97테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (112,14,'98. 테스트 제목 입니다.','98테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (113,14,'99. 테스트 제목 입니다.','99테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (114,14,'100. 테스트 제목 입니다.','100테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (115,14,'101. 테스트 제목 입니다.','101테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (116,14,'102. 테스트 제목 입니다.','102테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (117,14,'103. 테스트 제목 입니다.','103테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (118,14,'104. 테스트 제목 입니다.','104테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (119,14,'105. 테스트 제목 입니다.','105테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (120,14,'106. 테스트 제목 입니다.','106테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (121,14,'107. 테스트 제목 입니다.','107테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (122,14,'108. 테스트 제목 입니다.','108테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (123,14,'109. 테스트 제목 입니다.','109테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (124,14,'110. 테스트 제목 입니다.','110테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (125,14,'111. 테스트 제목 입니다.','111테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (126,14,'112. 테스트 제목 입니다.','112테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (127,14,'113. 테스트 제목 입니다.','113테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (128,14,'114. 테스트 제목 입니다.','114테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (129,14,'115. 테스트 제목 입니다.','115테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (130,14,'116. 테스트 제목 입니다.','116테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (131,14,'117. 테스트 제목 입니다.','117테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (132,14,'118. 테스트 제목 입니다.','118테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (133,14,'119. 테스트 제목 입니다.','119테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (134,14,'120. 테스트 제목 입니다.','120테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (135,14,'121. 테스트 제목 입니다.','121테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (136,14,'122. 테스트 제목 입니다.','122테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (137,14,'123. 테스트 제목 입니다.','123테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (138,14,'124. 테스트 제목 입니다.','124테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (139,14,'125. 테스트 제목 입니다.','125테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (140,14,'126. 테스트 제목 입니다.','126테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (141,14,'127. 테스트 제목 입니다.','127테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (142,14,'128. 테스트 제목 입니다.','128테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (143,14,'129. 테스트 제목 입니다.','129테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (144,14,'130. 테스트 제목 입니다.','130테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (145,14,'131. 테스트 제목 입니다.','131테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (146,14,'132. 테스트 제목 입니다.','132테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (147,14,'133. 테스트 제목 입니다.','133테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (148,14,'134. 테스트 제목 입니다.','134테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (149,14,'135. 테스트 제목 입니다.','135테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (150,14,'136. 테스트 제목 입니다.','136테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (151,14,'137. 테스트 제목 입니다.','137테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (152,14,'138. 테스트 제목 입니다.','138테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (153,14,'139. 테스트 제목 입니다.','139테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (154,14,'140. 테스트 제목 입니다.','140테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (155,14,'141. 테스트 제목 입니다.','141테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (156,14,'142. 테스트 제목 입니다.','142테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (157,14,'143. 테스트 제목 입니다.','143테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (158,14,'144. 테스트 제목 입니다.','144테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (159,14,'145. 테스트 제목 입니다.','145테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (160,14,'146. 테스트 제목 입니다.','146테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (161,14,'147. 테스트 제목 입니다.','147테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (162,14,'148. 테스트 제목 입니다.','148테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (163,14,'149. 테스트 제목 입니다.','149테스트 글 입니다.',to_date('21/08/12','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (164,17,'스프링 공부 글 입니다.','스프링 공부 글 입니다.',to_date('21/08/13','RR/MM/DD'));
REM INSERTING into JBLOG.USERS
SET DEFINE OFF;
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (5,'aaaa','강호동','1234',to_date('21/08/12','RR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."COMMENTS" ADD PRIMARY KEY ("CMTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."COMMENTS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."COMMENTS" MODIFY ("CMTCONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JBLOG"."CATEGORY" ADD PRIMARY KEY ("CATENO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."CATEGORY" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."CATEGORY" MODIFY ("CATENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "JBLOG"."POST" ADD PRIMARY KEY ("POSTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."POST" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."POST" MODIFY ("POSTTITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."USERS" ADD UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."USERS" ADD PRIMARY KEY ("USERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."USERS" MODIFY ("JOINDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "JBLOG"."BLOG" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."BLOG" MODIFY ("BLOGTITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "JBLOG"."BLOG" ADD CONSTRAINT "BLOG_FK" FOREIGN KEY ("ID")
	  REFERENCES "JBLOG"."USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JBLOG"."CATEGORY" ADD CONSTRAINT "CATEGORY_FK" FOREIGN KEY ("ID")
	  REFERENCES "JBLOG"."BLOG" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK_1" FOREIGN KEY ("POSTNO")
	  REFERENCES "JBLOG"."POST" ("POSTNO") ENABLE;
  ALTER TABLE "JBLOG"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK_2" FOREIGN KEY ("USERNO")
	  REFERENCES "JBLOG"."USERS" ("USERNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "JBLOG"."POST" ADD CONSTRAINT "POST_FK" FOREIGN KEY ("CATENO")
	  REFERENCES "JBLOG"."CATEGORY" ("CATENO") ENABLE;