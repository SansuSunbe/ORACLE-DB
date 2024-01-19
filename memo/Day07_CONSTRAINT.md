
제약 조건 : 테이블을 생성할 때 특정 컬럼에 조건을 부여하여 들어오는 데이터를 검사함

- 제약조건 생성
	-> CONSTRAINT 테이블 명 PRIMARY KEY(컬럼명)

- 제약조건 삭제
	-> ALTER TABLE 테이블명 DROP CONSTRAINT 제약조건 명;

- 제약조건 추가
	-> ALTER TABLE 테이블명 ADD CONSTRAINT 제약조건 명 PRIMARY KEY(제약조건 추가할 컬럼명);

- ex)
	- ![](https://i.imgur.com/wFaPbRE.png)
