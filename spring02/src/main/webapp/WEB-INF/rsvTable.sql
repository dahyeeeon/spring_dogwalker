CREATE TABLE reservation(
	num NUMBER PRIMARY KEY,
	id VARCHAR2(30),
	kakao VARCHAR2(100),
	nickname VARCHAR2(50),
	dogSize VARCHAR2(100),
	selectDate VARCHAR2(100),
	timeSlot VARCHAR2(80),
	cctv VARCHAR2(50),
	walkerName VARCHAR2(100)
);

CREATE SEQUENCE reservation_seq;

select * from reservation;