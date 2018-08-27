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
   fileSize	long
);

drop table walker_profile;

Create table walker_profile(
   id varchar2(30) PRIMARY KEY,
   career varchar2(500),
   experience varchar2(500),
   freeservice varchar2(500),
   imagePath VARCHAR2(100),
   orgFileName varchar2(300),
    saveFileName varchar2(300),
    fileSize long
)

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

select * from pet_walker;

