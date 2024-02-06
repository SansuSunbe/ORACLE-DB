-- ROLE : 권한이 뭉쳐있는(모여있는) 상태
-- CONNECT, RESOURCE, DBA 가 있음
-- GRANT 권한명(ROLE 이름), 권한명2,.. TO 계정명
-- REVOKE 권한명(ROLE 이름) FROM 계정명

-- A라는 계정의 테이블에 DML을 사용하기 위해서는 A계정에게 권한을 부여받아야 한다.
CREATE TABLE COPY_PLAYER AS SELECT * FROM HR.PLAYER;
SELECT * FROM COPY_PLAYER CP JOIN HR.TEAM T
ON CP.TEAM_ID = T.TEAM_ID;