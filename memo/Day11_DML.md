
- DML(Data Manipulation Language)
	- 데이터 조작 언어

- SELECT : 조회(검색)
	-  SELECT 컬럼명1, 컬럼명2, ... FROM 테이블명
	- WHERE 조건식;
- INSERT : 추가
	- INSERT INTO 테이블명 <- 이 방식은 디폴트 값이 있는 컬럼을 생략해도 됨
	  (컬럼명1, 컬럼명2,....)
	- VALUES(값1, 값2,...)
	  또는
	  INSERT INTO 테이블명 VALUES(값1, 값2,...); <- 이 방식은 컬럼을 만든 순서대로 써야됨 디폴트값 없을 때
- UPDATE : 수정
	- UPDATE 테이블명
	  SET 기존컬럼명 = 새로운 값
	  WHERE 조건식
- DELETE : 삭제
	- DELETE FROM 테이블명 
	  WHERE 조건식; <- 하나의 행(ROW)가 사라짐

- ex) 
	```

	- PLAYER 테이블에서 TEAM_ID가 'K01'인 선수 이름을 바꾸기
		UPDATE PLAYER
		SET PLAYER_NAME = '수정함'
		WHERE TEAM_ID = 'K01';

	- PLAYER 테이블에서 POSITION이 'MF'인 선수 삭제하기
		DELETE FROM PLAYER
		WHERE "POSITION" = 'MF';
  
	- PLAYER 테이블에서 HEIGHT가 180이상인 선수 삭제하기
		DELETE FROM PLAYER
		WHERE HEIGHT >= 180;
		
		SELECT * FROM PLAYER
		WHERE HEIGHT >= 180;
	``` 
- AS(ALIAS) : 별칭
	-- SELECT 절 : AS 뒤에 별칭 작성, 한 칸 띄우고 작성
	-- FROM 절 : 한 칸 띄우고 작성
	- ex)
	```
		SELECT PLAYER_ID AS "선수 번호" FROM PLAYER;
		SELECT PLAYER_ID "선수 번호" FROM PLAYER;

		SELECT PLAYER_ID "선수 번호", PLAYER_NAME AS "선수 이름" FROM PLAYER;

	- PLAYER 테이블에서 BACK_NUM을 "등 번호"로, NICKNAME을 "선수 별명"으로 바꿔서 검색
		SELECT BACK_NO AS "등 번호", NICKNAME AS "선수 별명" FROM PLAYER;

		SELECT p.TEAM_ID"선수 테이블", t.TEAM_ID"팀 테이블" FROM PLAYER p, TEAM t;
	``` 
