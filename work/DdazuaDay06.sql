-- 제약조건 DEFAULT와 CHECK
-- 학생 테이블 생성
CREATE TABLE TBL_STUDENT(
	ID NUMBER,
	NAME VARCHAR2(100),
	MAJOR VARCHAR2(100),
	GENDER CHAR(1) DEFAULT 'W' NOT NULL CONSTRAINT BAN_CHAR CHECK(GENDER IN('M', 'W')),
	BIRTH DATE CONSTRAINT BAN_DATE CHECK(BIRTH >= TO_DATE('1980-01-01', 'YYYY-MM-DD')),
	CONSTRAINT STD_PK PRIMARY KEY(ID)
);

INSERT INTO TBL_STUDENT
(ID, NAME, MAJOR, GENDER, BIRTH)
VALUES(1, '이진원', '개?발', 'M', TO_DATE('2001-02-05', 'YYYY-MM-DD'));

SELECT * FROM TBL_STUDENT;

INSERT INTO TBL_STUDENT
(ID, NAME, MAJOR, BIRTH)
VALUES(2, '홍?길동', '코?딩', TO_DATE('2000-09-01', 'YYYY-MM-DD'));

TRUNCATE TABLE TBL_STUDENT;