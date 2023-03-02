-- 집계함수를 사용하기 위해서 그룹핑
USE sqldb;

-- GROUP BY에 작성된 컬럼 명만 SELECT에 쓸 수 있음
SELECT userID AS '아이디'
     , SUM(amount) AS '구매갯수'
  FROM buytbl
 GROUP BY userID;
 
SELECT userID AS '아이디'
     , avg(amount) AS '평균구매갯수'
  FROM buytbl
 GROUP BY userID;
 
 -- HAVING은 집계함수등의 결과값을 필터링 하기 위해서
 select userID
	  , sum(price * amount)
   FROM buytbl
  group by userID
 HAVING SUM(price * amount) >= 1000 ;
 
-- ROLL UP
 select userID
	  , sum(price * amount)
   FROM buytbl
  group by userID
   WITH ROLLUP ;