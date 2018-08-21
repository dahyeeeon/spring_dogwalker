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

Create table walker_profile(
	career varchar2(500),
	experience varchar2(500),
	freeservice varchar2(500),
	imagePath VARCHAR2(100),
	orgFileName varchar2(300),
   saveFileName varchar2(300),
   fileSize	long

)

drop table walker_profile;

select * from walker_profile;

select * from pet_walker;

