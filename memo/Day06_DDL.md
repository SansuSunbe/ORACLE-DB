
SQL문(스크립트 문 = 한줄 씩 실행)

- DDL(Data Definition Laguage) : 데이터 정의어
	- 테이블 조작, 제어 관련 쿼리문

- 테이블 설명
	1. CREATE : 테이블 생성
	2. DROP : 테이블 삭제
	3. ALTER : 테이블 수정 
	 ```
            - 테이블명 수정 : RENAME TO [새로운 테이블명]
     	- 컬럼 추가 : ADD([새로운 컬럼명] [컬럼 타입]) 
	- 컬럼명 변경 : RENAME COLUMN [생성된 컬럼명] TO [새로운 컬럼명]
	- 컬럼 삭제 : DROP COLUMN [생성된 컬럼명]
	```
	4. TRUNCATE : 테이블 내용 전체 삭제

- 자료형(TYPE)
	- 숫자 
		- NUMBER(precision) : 정수
		- NUMBER(precision, 소수점 자리수) : 실수
		- NUMBER : 생략시 22byte까지 입력 가능(38자리 정수)

    - 문자열
		- CHAR(길이) : 고정형
			 ex) CHAR(4)에 'A'를 넣으면 나머지 3 자리가 공백으로 채워짐
		     ex) 형식을 정한 날짜, 주민등록번호 처럼 글자 수가 절대 변하지 않는 값을 넣음
		- VARCHAR(길이), VARCHAR2(길이) : 가변형
			ex) 값의 길이만큼 공간이 배정된다 글자 수에 변화가 있는 값을 넣는다. 
			ex) 이름이나 이메일 비밀번호 아이디 등등 

	- DATE : FORMAT에 맞춰서 날짜를 저장하는 타입

- ex) 
	![](https://i.imgur.com/wFJDRVI.png)
