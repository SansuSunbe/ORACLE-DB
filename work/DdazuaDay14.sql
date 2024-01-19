
SELECT * FROM TBL_CAR;

CREATE TABLE TBL_CAR(
	ID NUMBER PRIMARY KEY,
	BRAND VARCHAR2(100),
	COLOR VARCHAR2(100),
	PRICE NUMBER
);

ALTER TABLE TBL_CAR MODIFY BRAND NOT NULL;

INSERT INTO TBL_CAR 
VALUES(001, '밴츠', '회색', 3500);

INSERT INTO TBL_CAR 
VALUES(002, '아우디', NULL, 3500);

-- PLAYER 테이블에서 POSITION이 NULL인 선수 검색
SELECT * FROM PLAYER WHERE "POSITION" IS NULL;

-- PLAYER 테이블에서 POSITION이 NULL이면 '미정'으로 결과 출력하기
SELECT NVL("POSITION", '미정') FROM PLAYER WHERE "POSITION" IS NULL;
SELECT PLAYER_NAME "선수 이름", NVL("POSITION", '미정') 포지션 FROM PLAYER;

SELECT PLAYER_NAME "선수 이름", NVL2("POSITION", '확정', '미정') FROM PLAYER; 

-- PLAYER 테이블에서 NATION이 NULL이 아니면 등록, NULL이면 미등록으로 변경
SELECT PLAYER_NAME "선수 이름", NVL2(NATION, '등록', '미등록')"국가 등록 여부" FROM PLAYER;

-- 숫자형 함수(DUAL)
-- 절대값(음수를 양수로)
SELECT ABS(-10) FROM DUAL;

-- 양의정수(1), 영(0), 음의정수(-1) 판단
SELECT SIGN(-234), SIGN(0), SIGN(123) FROM DUAL;

-- 나머지(% 모듈러스)
SELECT MOD (10, 3) FROM DUAL;

-- 값보다 큰 최근접 정수(올림)
SELECT CEIL(3.14), CEIL (-3.14) FROM DUAL;

-- 값보다 작은 최근접 정수(내림)
SELECT FLOOR(3.14), FLOOR(-3.14) FROM DUAL;

-- 반올림
SELECT ROUND(3.5515616) FROM DUAL;
SELECT ROUND(3.5515616, 1) FROM DUAL;

-- 버림
SELECT TRUNC(3.9) FROM DUAL;

-- 키는 소수점 둘 째 자리까지 반올림, 몸무게는 소수점 버림
SELECT ROUND(HEIGHT, 2)||'cm' AS "키", TRUNC (WEIGHT)||'kg' AS "몸무게" FROM PLAYER;







