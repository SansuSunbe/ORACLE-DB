- 테이블 예시
	![](https://i.imgur.com/LaallAf.png)
	위의 이러한 구조를 가지는 것을 Table, Relation(오라클에서 쓰임), Class라고 불림

- COLUMN(열, 속성, 필드)
	- 공통된 값들의 주제(나이, 이름 등등)

- ROW(행, 레코드, 튜플)
	- 하나의 정보

- Primary Key(PK)
	- 고유한 값(각 행의 구분점으로 사용됨)
	- 하나의 테이블에 중복이 없고 NULL을 허용하지 않음(위의 테이블에서는 유저 번호랑 구매번호가 PK가 됨)

- Foreign Key
	- 다른 테이블의 PK를 의미한다.
	- 보통 테이블끼리 관계를 맺을 때 사용됨(위의 테이블 B의 번호가 FK가 됨 -> 테이블 A랑 관계 연결)
	- 중복이 가능함 위의표를 예시로
	    Table A에 없는 값을 Table B의 FK 컬럼에 사용할 수 없다.
		   -> 테이블 A에 있는 값을 참조함(테이블 A에 없는 값을 테이블 B에 추가할 수 없음)

- Unique Key
	- NULL값은 허용하지만 중복을 허용하지 않음 (위의 표에서는 아이디 중복확인에 사용됨)

- ex) 
		![](https://i.imgur.com/yfxmLJc.png)
