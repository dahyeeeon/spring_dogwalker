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


select * from pet_walker;



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
   fileSize   long
);

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


