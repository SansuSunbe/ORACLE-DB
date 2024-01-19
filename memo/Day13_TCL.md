
- TCL(Transaction Control Language) : DML을 위한 명령어 (DDL에는 사용불가)
	트랜젝션 제어 언어

- 트랜젝션
	- 하나의 작업 단위

- COMMIT
	- 모든 작업을 확정하는 명령어

- ROLLBACK
	- 이전 커밋한 지점으로 이동

TRUNCATE는 테이블 내용을 전체 삭제하므로, DELETE보다 빠르게 처리할 수 있다.
대용량 데이터 처리에 유리하지만 복구가 불가능하기 때문에 복구가 가능한
DELETE를 많이 사용한다.

AS(ALIAS) : 별칭
-- SELECT 절 : AS 뒤에 별칭 작성, 한 칸 띄우고 작성
-- FROM 절 : 한 칸 띄우고 작성

ex) SELECT PLAYER_ID AS "선수 번호" FROM PLAYER;
ex) SELECT PLAYER_ID "선수 번호" FROM PLAYER;
ex) SELECT PLAYER_ID "선수 번호", PLAYER_NAME AS "선수 이름" FROM PLAYER;