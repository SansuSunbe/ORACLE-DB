
CREATE TABLE 테이블명
컬럼명 CHAR(1) DEFAULT '디폴트값으로 넣을 문자' NOT NULL CONSTRAINT 디폴트값명 (CHECK IN('입력할 수 있는 문자1' , ' 입력할 수있는 문자2'),

TO_DATE : 문자형으로 입력된 날짜를 DATE타입으로 바꿔줌 
ex) TO_DATE ('2001-02-05', 'YYYY-MM-DD')

- 무결성이란?
	- 데이터의 정확성, 일관성, 유효성이 유지되는 것
		 1) 정확성
		   - 데이터는 애매하면 안된다.
		 2) 일관성
		   - 각 사용자가 일관된 데이터를 볼 수 있도록 해야한다.
		 3) 유효성
		   - 데이터가 실제 존재하는 데이터여야 한다.
	1. 개체 무결성
		- 모든 테이블이 PK로 선택된 컬럼을 가져야 한다.
		- PK로 선택된 컬럼은 고유한 값을 가져야 하며, 빈 값, NULL값을 허용하지 않는다.
	2. 참조 무결성
		- 두 테이블의 데이터가 항상 일관된 값을 가지도록 유지하는 것
	1. 도메인 무결성 
		- 컬럼의 타입, NULL값의 허용 등에 대한 사항을 정의하고
			올바른 데이터가 입력되었는지 를 확인하는 것

- ex) 
	- ![](https://i.imgur.com/l7YjV2k.png)
