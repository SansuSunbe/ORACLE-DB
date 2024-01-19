SELECT * FROM PLAYER ORDER BY PLAYER_ID DESC; -- 내림차순

SELECT I.INDEX_NAME FROM USER_IND_COLUMNS I
WHERE TABLE_NAME = 'PLAYER';

SELECT /*+ INDEX_DESC(PLAYER PLAYER_PK) */ * FROM PLAYER; -- 내림차순
SELECT /*+ INDEX(PLAYER PLAYER_PK) */ * FROM PLAYER; -- 오름차순