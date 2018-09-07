CREATE TABLE pet_walker(
   id VARCHAR2(30) PRIMARY KEY,
   nickname VARCHAR2(100),
   pwd VARCHAR2(100),
   kakao VARCHAR2(100),
   phone VARCHAR2(100),
   addr VARCHAR2(100),
   sex VARCHAR2(10),
   hasPet VARCHAR2(10),
   imagePath VARCHAR2(100),
   evaluation NUMBER default 0,s
   regdate DATE,
   orgFileName varchar2(300),
   saveFileName varchar2(300),
   fileSize	long,
   isProfiled NUMBER default 0
);
<<<<<<< HEAD


CREATE TABLE pet_users(
   id VARCHAR2(30) PRIMARY KEY,
   nickname VARCHAR2(100),
   pwd VARCHAR2(100),
   kakao VARCHAR2(100),
   phone VARCHAR2(100),
   addr VARCHAR2(100),
   sex VARCHAR2(10),
   hasPet VARCHAR2(10),
   imagePath VARCHAR2(100),
   regdate DATE,
   orgFileName varchar2(300),
   saveFileName varchar2(300),
   fileSize long,
   isConfirmed NUMBER default 0 
);
=======
select * from manage;
select * from pet_walker;
>>>>>>> refs/remotes/origin/soda

CREATE TABLE manage(
   num NUMBER PRIMARY KEY,
   writer VARCHAR2(100),
   title VARCHAR2(100),
   content CLOB,
   stars NUMBER,
   walker VARCHAR2(100),
   regdate DATE,
   imagePath VARCHAR2(200),
   orgImageName VARCHAR2(200),
   saveImageName VARCHAR2(200), 
   ImageSize VARCHAR2(200),
   startRowNum NUMBER,
   endRowNum NUMBER,
   prevNum NUMBER,
   nextNum NUMBER,
   id VARCHAR2(30),
   kakao VARCHAR2(100),
   nickname VARCHAR2(50),
   dogSize VARCHAR2(100),
   selectDate VARCHAR2(100),
   timeSlot VARCHAR2(80),
   cctv VARCHAR2(50),
   walkerName VARCHAR2(100),
   career varchar2(500),
   experience varchar2(500),
   freeservice varchar2(500),
   filePath VARCHAR2(100),
   orgFileName varchar2(300),
   saveFileName varchar2(300),
   fileSize long
);

CREATE TABLE reservation(
   num NUMBER PRIMARY KEY,
   id VARCHAR2(30),
   kakao VARCHAR2(100),
   nickname VARCHAR2(50),
   dogSize VARCHAR2(100),
   selectDate VARCHAR2(100),
   timeSlot VARCHAR2(80),
   cctv VARCHAR2(50),
   petwalker VARCHAR2(50),
   isReserved NUMBER default 0
);

create table board_Cafe(
num NUMBER PRIMARY KEY,
writer varchar2(100),
title varchar2(100),
content varchar2(500),
viewCount number,
regdate DATE,
startRowNum number,
endRowNum number,
prevNum number,
nextNum number
)

create Sequence board_cafe_seq;

create table board_cafe_comment(
	num NUMBER PRIMARY KEY,
	writer varchar2(100),
	content varchar2(500),
	target_id varchar2(100),
	ref_group number,
	comment_group number,
	regdate DATE
)



<<<<<<< HEAD
CREATE SEQUENCE reservation_seq;
=======
drop table pet_walker;

select * from pet_walker;

drop table pet_walker;

CREATE TABLE pet_users(
   id VARCHAR2(30) PRIMARY KEY,
   nickname VARCHAR2(100),
   pwd VARCHAR2(100),
   kakao VARCHAR2(100),
   phone VARCHAR2(100),
   addr VARCHAR2(100),
   sex VARCHAR2(10),
   hasPet VARCHAR2(10),
   imagePath VARCHAR2(100),
   regdate DATE,
   orgFileName varchar2(300),
   saveFileName varchar2(300),
   fileSize long
);

drop table pet_users;

CREATE TABLE manage(
   num NUMBER PRIMARY KEY,
   writer VARCHAR2(100),
   title VARCHAR2(100),
   content CLOB,
   stars NUMBER,
   walker VARCHAR2(100),
   regdate DATE,
   imagePath VARCHAR2(200),
   orgImageName VARCHAR2(200),
   saveImageName VARCHAR2(200), 
   ImageSize VARCHAR2(200),
   startRowNum NUMBER,
   endRowNum NUMBER,
   prevNum NUMBER,
   nextNum NUMBER,
   id VARCHAR2(30),
      kakao VARCHAR2(100),
      nickname VARCHAR2(50),
      dogSize VARCHAR2(100),
      selectDate VARCHAR2(100),
      timeSlot VARCHAR2(80),
      cctv VARCHAR2(50),
      walkerName VARCHAR2(100),
      career varchar2(500),
    experience varchar2(500),
    freeservice varchar2(500),
    filePath VARCHAR2(100),
    orgFileName varchar2(300),
    saveFileName varchar2(300),
    fileSize long
);

>>>>>>> refs/remotes/origin/soda

CREATE SEQUENCE manage_seq;

<<<<<<< HEAD
DROP table pet_walker;
DROP table pet_users;
DROP table manage;
DROP table reservation;
=======
drop table pet_walker;
>>>>>>> refs/remotes/origin/soda

DROP SEQUENCE manage_seq;

<<<<<<< HEAD
select * from pet_walker;
=======


select * from manage;
																					

select stars,m.nickname from pet_walker w, manage m where w.nickname = m.walker AND addr='홍제동' AND m.walker IN(SELECT nickname FROM pet_walker WHERE addr='홍제동');

SELECT id,nickname FROM pet_walker


SELECT nickname FROM pet_walker WHERE addr='홍제동';

SELECT e.num, e.title, e.content, e.stars, e.nickname, e.regdate,e.imagePath,e.orgImageName,e.saveImageName,
      e.ImageSize FROM manage e, pet_walker p WHERE e.nickname=#{tmp.nickname};

select career from manage;

SELECT career, experience, freeservice from manage WHERE nickname = '11';

>>>>>>> refs/remotes/origin/soda
select * from manage; 


<<<<<<< HEAD
select * from reservation;

select * frofm reservation where petwalker='채영';

select * from reservation where id='triplej'
=======
CREATE TABLE pet_walker(
   id VARCHAR2(30) PRIMARY KEY,
   nickname VARCHAR2(100),
   pwd VARCHAR2(100),
   kakao VARCHAR2(100),
   phone VARCHAR2(100),
   addr VARCHAR2(100),
   sex VARCHAR2(10),
   hasPet VARCHAR2(10),
   imagePath VARCHAR2(100),
   evaluation NUMBER default 0,
   regdate DATE,
   orgFileName varchar2(300),
   saveFileName varchar2(300),
   fileSize   long,
   isProfiled NUMBER default 0
);


drop table pet_walker;

CREATE TABLE pet_users(
   id VARCHAR2(30) PRIMARY KEY,
   nickname VARCHAR2(100),
   pwd VARCHAR2(100),
   kakao VARCHAR2(100),
   phone VARCHAR2(100),
   addr VARCHAR2(100),
   sex VARCHAR2(10),
   hasPet VARCHAR2(10),
   imagePath VARCHAR2(100),
   regdate DATE,
   orgFileName varchar2(300),
   saveFileName varchar2(300),
   fileSize long,
   isConfirmed NUMBER default 0 
);

drop table manage;

CREATE TABLE manage(
   num NUMBER PRIMARY KEY,
   writer VARCHAR2(100),
   title VARCHAR2(100),
   content CLOB,
   stars NUMBER,
   walker VARCHAR2(100),
   regdate DATE,
   imagePath VARCHAR2(200),
   orgImageName VARCHAR2(200),
   saveImageName VARCHAR2(200), 
   ImageSize VARCHAR2(200),
   startRowNum NUMBER,
   endRowNum NUMBER,
   prevNum NUMBER,
   nextNum NUMBER,
   id VARCHAR2(30),
   kakao VARCHAR2(100),
   nickname VARCHAR2(50),
   dogSize VARCHAR2(100),
   selectDate VARCHAR2(100),
   timeSlot VARCHAR2(80),
   cctv VARCHAR2(50),
   walkerName VARCHAR2(100),
   career varchar2(500),
   experience varchar2(500),
   freeservice varchar2(500),
   filePath VARCHAR2(100),
   orgFileName varchar2(300),
   saveFileName varchar2(300),
   fileSize long
);

CREATE TABLE reservation(
   num NUMBER PRIMARY KEY,
   id VARCHAR2(30),
   kakao VARCHAR2(100),
   nickname VARCHAR2(50),
   dogSize VARCHAR2(100),
   selectDate VARCHAR2(100),
   timeSlot VARCHAR2(80),
   cctv VARCHAR2(50),
   isReserved NUMBER default 0 
);

drop table reservation;

create table board_Cafe(
num NUMBER PRIMARY KEY,
writer varchar2(100),
title varchar2(100),
content varchar2(500),
viewCount number,
regdate DATE,
startRowNum number,
endRowNum number,
prevNum number,
nextNum number
)

create Sequence board_cafe_seq;

create table board_cafe_comment(
   num NUMBER PRIMARY KEY,
   writer varchar2(100),
   content varchar2(500),
   target_id varchar2(100),
   ref_group number,
   comment_group number,
   regdate DATE
)


	SELECT nickname, AVG(stars) FROM manage WHERE nickname 
IN (SELECT nickname FROM pet_walker 
WHERE substr(addr,1,3)='홍제동')
GROUP BY nickname 



select m.filePath filePath, p.imagePath imagePath, p.nickname nickname, p.id id , substr(p.addr,1,3) addr, p.hasPet hasPet,p.sex sex 
		FROM manage m JOIN pet_walker p 
		ON m.nickname = p.nickname;


>>>>>>> refs/remotes/origin/soda

