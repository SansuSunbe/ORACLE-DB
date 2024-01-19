
- CONCATENATION(연결) : ||
	- 원하는 정보를 연결해서 조회할 때 사용

- ex1) 
	- SELECT PLAYER_NAME || '의 별명은' || NICKNAME || '이다.' AS자기소개 FROM PLAYER;

- ex2) 
	- SELECT * FROM PLAYER;
		 SELECT PLAYER_NAME || '의 포지션은' || "POSITION" || '이다.' 작전회의 FROM PLAYER;

- LIKE 
	-- 포함된 문자열의 값을 찾음, 문자의 개수도 제한을 줄 수 있음.
	-- % : 모든 것
	-- %A : A로 끝나는 모든 값
	-- '_A' : A로 끝나면서 두 자리인 값(AA, 2A, PA)

	ex) SELECT * FROM TEAM WHERE TEAM_NAME LIKE '%천마';

	- PLAYER 테이블에서 이씨 찾기
		SELECT * FROM PLAYER WHERE PLAYER_NAME LIKE '이%';
		SELECT * FROM PLAYER WHERE PLAYER_NAME LIKE '이_';

	- PLAYER 테이블에서 김씨와 이씨 찾기
		SELECT * FROM PLAYER
		WHERE PLAYER_NAME LIKE '김%' OR PLAYER_NAME LIKE '이%';

	- PLAYER 테이블에서 이씨가 아닌 사람 찾기
		SELECT * FROM PLAYER WHERE NOT PLAYER_NAME LIKE '이%';
	- PLAYER 테이블에서 세자리 김씨가 아닌 사람 찾기
		SELECT * FROM PLAYER WHERE NOT PLAYER_NAME LIKE '김__';