
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
   fileSize	long,
   isProfiled NUMBER default 0
);
select * from manage;
select * from pet_walker;

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

CREATE SEQUENCE manage_seq;


select * from manage;

--drop table walker_profile;
--Create table walker_profile(
--   id varchar2(30) PRIMARY KEY,
--   career varchar2(500),
--   experience varchar2(500),
--   freeservice varchar2(500),
--   imagePath VARCHAR2(100),
--   orgFileName varchar2(300),
--    saveFileName varchar2(300),
--    fileSize long
--)

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

select * from board_cafe;

select * from walker_profile;

drop table pet_walker;

select * from pet_walker;

<<<<<<< HEAD
drop table pet_walker;

=======
>>>>>>> branch 'tina2' of https://github.com/dahyeeeon/spring_dogwalker.git
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


CREATE SEQUENCE manage_seq;

drop table manage;

SELECT m.FILEPATH FROM pet_walker w ,manage m WHERE w.id = m.id AND w.addr='홍제동';

select * from manage;
																						m.walker = "나연"
																						m.walker = "채영"
																						m.walker = "지효"
select stars from pet_walker w, manage m where w.nickname = m.walker AND addr='홍제동' AND m.walker = (SELECT petwalker.nickname FROM pet_walker GROUP BY pet_walker HAVING addr='홍제동');

select stars,m.nickname from pet_walker w, manage m where w.nickname = m.walker AND addr='홍제동' AND m.walker IN(SELECT nickname FROM pet_walker WHERE addr='홍제동');

SELECT id,nickname FROM pet_walker


SELECT nickname FROM pet_walker WHERE addr='홍제동';

SELECT e.num, e.title, e.content, e.stars, e.nickname, e.regdate,e.imagePath,e.orgImageName,e.saveImageName,
      e.ImageSize FROM manage e, pet_walker p WHERE e.nickname=#{tmp.nickname};

select career from manage;

SELECT career, experience, freeservice from manage WHERE nickname = '11';

select * from manage; 
