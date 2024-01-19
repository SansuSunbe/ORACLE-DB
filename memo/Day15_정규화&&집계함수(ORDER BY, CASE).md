- 정규화
	- 삽입, 수정, 삭제의 이상현상을 제거
	- 데이터의 중복 최소화
	- 대부분 3차 정규화까지만 진행
```
- 1차 정규화(1NF)
	- 하나의 컬럼에 값이 1개씩만 있어야 한다.
	- 반복적인 컬럼 값이 나타나는 경우
		검색이 힘들다.
	- ex)		TBL_PRODUCT
			상품명
			바지1, 바지2, 바지3

- 1차 정규화(1NF) 진행
	- ex)		TBL_PRODUCT
			상품명
			바지1
			바지2
			바지3

- 2차 정규화(2NF)
	- 테이블의 모든 컬럼이 서로 관계가 있어야 한다.
	- 모든 컬럼이 서로 관계가 없는 경우
	- ex)		TBL_USER
			이름	나이	상품명
			홍길동	10	바지
			김길동	12	치마
			고길동	13	자켓

- 2차 정규화(2NF) 진행
	- ex)		TBL_USER	
			이름	나이
			홍길동	10
			김길동	12
			고길동	13

			PRODUCT
			나이	상품명
			10	상품1
			12	상품2
			13	상품3

- 3차 정규화
	- ex)		TBL_USER
			이름	시	구	동	우편번호
			홍길동	서울시	강남구	봉천	44232
			고길동	인천시	서구	경서동	43321

			*우편번호로 시, 구, 동을 알 수 있다.
			-> 중복된 데이터가 생길 가능성이 있음

	- 3차 정규화(3NF) 진행	
		TBL_USER
		이름	우편번호
		홍길동	12345
		고길동	54321

		TBL_ADDR
		우편번호	   시	   구	    동
		12345	서울시	강서구	백석동
		54321	인천시	동구	구월동
---------------------------------------------------------------------------------------------------
```

- 데이터베이스에서 정규화가 필요한 이유
	- 데이터베이스를 잘못 설계하면 불필요한 데이터 중복으로 인해
	- 공간이 낭비될 수 있음 
		 -> 이런 현상을 이상(Anomaly)라고 함

- ex)
	회원번호와 프로젝트코드 두 컬럼의 조합키로 설정되어 있는 테이블이고
	한 사람은 하나의 부서만 가질 수 있다.

	회원번호	이름	부서	프로젝트코드	급여	부서별명수
	2503161	테스터1	개발팀	ABC10001	3000	5	
	1315135	테스터2	개발팀	CBA20001	4000	4
	1231431	테스터3	기획팀	CDA30001	5000	2

이상현상의 종류
1) 삽입이상
 - 새 데이터를 삽입하기 위해 불필요한 데이터도 삽입해야 하는 문제
 - 담당 프로젝트가 정해지지 않은 사원이 있다면,
 - 프로젝트 코드에 NULL을 작성할 수 없으므로 이 사원은 테이블에
 - 추가될 수 없다. 따라서 '미정' 이라는 프로젝트 코드를 따로 만들어서
 - 삽입해야함

2) 갱신이상
 - 중복 행 중 일부만 변경하여 데이터가 불일치하게 되는 모순의 문제
 - 한 명의 사원은 반드시 하나의 부서에만 속할 수 있다.
 - 만약 "사원1"이 보안팀으로 부서를 옮길 시 3개 모두 갱신해주지 않는다면
 - 개발팀인지 보안팀인지 알 수 없다.
 - 이러한 현상을 갱신 이상이라고 한다.

3) 삭제이상
 - 행을 삭제하면 꼭 필요한 데이터까지 함께 삭제되는 문제
 - "테스터2"가 담당한 프로젝트를 박살내서 드랍된다면 "사원2"행을 모두 삭제하게 된다.
 - 따라서 프로젝트에서 드랍되면 정보를 모두 드랍하게 된다.
 - 이러한 현상을 삭제 이상이라고 한다.
 - 이러한 이상 현상이 발생하는 이유는 테이블이 정규화 되어 있지 않기 때문이다.
 - 정규화를 진행하기 위해서는 각 컬럼간의 관련성을 파악해야 하고, 
 - 이 관련성을 "함수적 종속성(Functional Dependecy)"이라고 한다.
 - 따라서 하나의 테이블에는 하나의 함수적 종속성만 존재하도록 정규화를 한다.

- ex)
	함수
	X -> Y (X는 Y의 결정자 or Y는 X에게 종속됨)
	X : 결정자 -> X가 Y를 결정
	Y : 종속자 -> Y가 X에게 종속됨
-----------------------------------------------------------------------------------------
- NULL
	- 정의되지 않은 값
	- 빈 값 대신 미정값을 부여할 때 사용(PK는 불가능, FK는 가능)

- NOT NULL 제약조건
	-> ALTER TABLE 테이블명 MODIFY 컬럼명 NOT NULL;

- 제약조건 삭제
	-> ALTER TABLE 테이블명 DROP CONSTRAINT 제약조건 이름;

- 조건식
	-> 컬럼명 IS NULL : 컬럼 값이 NULL이면 참
	-> 컬럼명 IS NOT NULL : 컬럼 값이 NULL이 아니면 참

- NULL값을 다른 값으로 변경
	-> NVL() : NULL값 대신 다른 값으로 변경 후 검색
	-> NVL2() : NULL일 때의 값, NULL이 아닐 때의 값을 각각 설정

-  집계 함수(NULL은 포함되지 않는다.) 
	- 여러 개의 값을 하나의 값으로 집계하여 나타낸다.
	-  WHERE 절에서는 사용할 수 없음

	- AVG() : 평균
	- MAX() : 최대값
	- MIN() : 최소값
	- SUM() : 총 합
	- COUNT() : 개수

- ex) 
	SELECT AVG(HEIGHT), MAX(HEIGHT), MIN(HEIGHT), SUM(HEIGHT), COUNT(HEIGHT) FROM PLAYER;

	SELECT ROUND(AVG(HEIGHT), 2), MAX(HEIGHT), MIN(HEIGHT), SUM(HEIGHT), COUNT(HEIGHT) FROM PLAYER;

	- PLAYER 테이블에서 HEIGHT 개수 검색(NULL 포함해서 COUNT 하기)
		SELECT COUNT(NVL(HEIGHT, 0)) FROM PLAYER;

---------------------------------------------------------------------------------------------------

- ORDER BY : 정렬

- ASC : 오름차순(디폴트 정렬)

- DESC : 내림차순

- ex) 
	SELECT * FROM PLAYER ORDER BY HEIGHT;

	SELECT * FROM PLAYER ORDER BY HEIGHT DESC;

	SELECT * FROM PLAYER ORDER BY 12 DESC; -- 12번째 컬럼을 내림차순으로 정렬

	-- PLAYER 테이블에서 키 순, 몸무게 순(오름차순)으로 검색
	-- NULL이 아닌 값만 검색
	-- 첫번째 컬럼 값이 같으면 두 번째 정렬을 한다.
	SELECT PLAYER_NAME, HEIGHT, WEIGHT FROM PLAYER
	WHERE HEIGHT IS NOT NULL AND WEIGHT IS NOT NULL
	ORDER BY 2, 3;

---------------------------------------------------------------------------------------------------

- CASE문
	```

	 CASE WHEN THEN ELSE END

	 CASE WHEN 조건식 THEN '참 값' ELSE '거짓 값' END

	-  EMP테이블에서 SAL 3000이상이면 HIGH 1000이상이면 MID, 다 아니면 LOW
		SELECT * FROM EMP;
		SELECT ENAME 사원명, SAL 급여,

		CASE
		WHEN SAL >= 3000 THEN 'HIGH'
		WHEN SAL >= 1000 THEN 'MID'
		ELSE 'LOW'
		END
		FROM EMP;

	- STADIUM 테이블에서 SEAT_COUNT가 0이상 3000이하면 'S'
	- 30001이상 50000이하면 'M' 다 아니면 'L'
	- 중첩 케이스문
		SELECT STADIUM_NAME 경기장, SEAT_COUNT 좌석수,
		CASE
			WHEN SEAT_COUNT BETWEEN 0 AND 3000 THEN 'S'
			ELSE
			(
				CASE
				WHEN SEAT_COUNT BETWEEN 30001 AND 50000 THEN 'M'
				ELSE 'L'
			END
			)
		END
		FROM STADIUM;

	- PLAYER 테이블에서 WEIGHT가 50이상 70이하면 'L'
	- 71이상 80이하면 'M'
	- NULL이면 '미등록' 다 아니면 'H'
		SELECT PLAYER_NAME 선수이름, WEIGHT||'kg' 몸무게,
		CASE
			WHEN WEIGHT BETWEEN 50 AND 70 THEN 'L'
			WHEN WEIGHT BETWEEN 71 AND 80 THEN 'M'
			ELSE
			(
				CASE WHEN WEIGHT IS NULL THEN '미등록'
				ELSE 'H'
				END
			)
		END 체급
		FROM PLAYER;
	```
