-- 집계 함수(NULL은 포함되지 않는다.) : 여러 개의 값을 하나의 값으로 집계하여 나타낸다.
-- WHERE 절에서는 사용할 수 없음

-- AVG() : 평균
-- MAX() : 최대값 
-- MIN() : 최소값
-- SUM() : 총 합
-- COUNT() : 개수

SELECT AVG(HEIGHT), MAX(HEIGHT), MIN(HEIGHT), SUM(HEIGHT), COUNT(HEIGHT) FROM PLAYER;
SELECT ROUND(AVG(HEIGHT), 2), MAX(HEIGHT), MIN(HEIGHT), SUM(HEIGHT), COUNT(HEIGHT) FROM PLAYER;

-- PLAYER 테이블에서 HEIGHT 개수 검색(NULL 포함해서 COUNT 하기)
SELECT COUNT(NVL(HEIGHT, 0)) FROM PLAYER; 
---------------------------------------------------------------------------------------------------
-- ORDER BY : 정렬
-- ASC : 오름차순(디폴트 정렬)
-- DESC : 내림차순

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
-- CASE문 
-- CASE WHEN THEN ELSE END
-- CASE WHEN 조건식 THEN '참 값' ELSE '거짓 값' END
-- EMP테이블에서 SAL 3000이상이면 HIGH 1000이상이면 MID, 다 아니면 LOW
SELECT * FROM EMP;
SELECT ENAME 사원명, SAL 급여,
	CASE 
		WHEN SAL >= 3000 THEN 'HIGH' 
		WHEN SAL >= 1000 THEN 'MID'
		ELSE 'LOW'
	END
FROM EMP;

-- STADIUM 테이블에서 SEAT_COUNT가 0이상 3000이하면 'S'
-- 30001이상 50000이하면 'M' 다 아니면 'L'
-- 중첩 케이스문
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

-- PLAYER 테이블에서 WEIGHT가 50이상 70이하면 'L'
-- 71이상 80이하면 'M'
-- NULL이면 '미등록' 다 아니면 'H'
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

